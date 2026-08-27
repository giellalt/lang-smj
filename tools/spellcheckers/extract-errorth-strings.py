#!/usr/bin/env python3
"""Derive productive string edits from the tracked +Err/Orth test pairs.

The lexicalised error entries contain a direct misspelling-to-correction
relation.  Shipping all inflected pairs would memorise the current lexicon and
would not help unseen compounds.  This tool instead isolates each differing
region, adds enough shared context to make it specific, and aggregates equal
regions across lemmas.  The resulting regex rules can fire inside new words.

Input is the tab-separated, machine-generated typos-generated-err.tsv file.
Only rows whose analysis comment contains +Err/Orth are used.  Output follows
the strings.*.regex convention used by the desktop HFST error model.
"""

import argparse
import difflib
import sys
from collections import Counter, defaultdict


# Keep generated rules inside the ordinary SMJ letter alphabet.  Punctuation,
# whitespace, numerals, and abbreviation markers are deliberately excluded:
# unanchored productive rewrites of those symbols are too broad.
LOWER = "aábcčdđefghijklmnŋñoprsštŧuvwxyzžåäæéöø"
ALLOWED = set(LOWER)

VOWELS = set("aáeiouyåäæøö")

# Confusion classes already handled cheaply by the existing edit model.  A
# generated rule for one of these would add another price for the same edit,
# not new reachability.
CHEAP_CLASSES = [
    set("aáeiou"),
    {"i", "y"},
    {"f", "v"},
    {"i", "j"},
    {"n", "ŋ"},
    {"f", "ff"}, {"j", "jj"}, {"l", "ll"}, {"m", "mm"},
    {"n", "nn"}, {"ŋ", "ŋŋ"}, {"r", "rr"}, {"v", "vv"},
    {"s", "ss", "z", "zz", "š", "šš", "ž", "žž",
     "c", "cc", "hcc", "č", "čč", "hčč"},
    {"g", "gg", "k", "kk", "hk", "hkk"},
    {"b", "bb", "p", "pp", "hp", "hpp"},
    {"d", "dd", "h", "t", "tt", "ht", "htt", "đ", "đđ", "ŧ", "ŧŧ"},
    {"s", "ss", "ŧ", "ŧŧ"},
    {"hc", "z"}, {"hč", "ž"}, {"hk", "g"}, {"hp", "b"}, {"ht", "đ"},
    {"vt", "h", "k"}, {"vk", "h"}, {"vc", "h"},
    {"ášu", "atio"}, {"áššu", "atio"},
    {"-", ""},
]


def input_pairs(lines, stats):
    """Yield Err/Orth pairs and their lemma from generated TSV rows."""
    for line in lines:
        line = line.rstrip("\n")
        if not line or line.lstrip().startswith("#"):
            continue
        stats["rows_read"] += 1
        fields = line.split("\t")
        if len(fields) < 3:
            stats["drop_unparseable"] += 1
            continue
        comment = "\t".join(fields[2:])
        if "+Err/Orth" not in comment:
            stats["drop_non_errorth"] += 1
            continue
        err, norm = fields[0], fields[1]
        if not err or not norm:
            stats["drop_empty"] += 1
            continue
        lemma = comment.lstrip("#! ").split("+", 1)[0] or err
        stats["pairs_read"] += 1
        yield err, norm, lemma


def cheap(err, norm):
    """Return whether the existing model already crosses this in one step."""
    for cls in CHEAP_CLASSES:
        if err in cls and norm in cls:
            return True
    if len(err) <= 2 and len(norm) <= 2:
        if all(c in VOWELS for c in err) and all(c in VOWELS for c in norm):
            return True
    return False


def span(err, norm):
    """Return the minimal differing span as prefix length and two cores."""
    limit = min(len(err), len(norm))
    prefix = 0
    while prefix < limit and err[prefix] == norm[prefix]:
        prefix += 1
    suffix = 0
    while (suffix < limit - prefix
           and err[len(err) - 1 - suffix] == norm[len(norm) - 1 - suffix]):
        suffix += 1
    return (prefix,
            err[prefix:len(err) - suffix],
            norm[prefix:len(norm) - suffix])


def regions(err, norm, gap):
    """Return separated differing regions as (start, error, norm) triples."""
    ops = [op for op in difflib.SequenceMatcher(
        None, err, norm, autojunk=False).get_opcodes() if op[0] != "equal"]
    if not ops:
        return []
    groups = [[ops[0]]]
    for previous, current in zip(ops, ops[1:]):
        if current[1] - previous[2] > gap:
            groups.append([current])
        else:
            groups[-1].append(current)
    return [
        (group[0][1],
         err[group[0][1]:group[-1][2]],
         norm[group[0][3]:group[-1][4]])
        for group in groups
    ]


def contextualise(err, start, core_err, core_norm, wanted, lower=0, upper=None):
    """Pad a differing region with shared context to the requested length."""
    if upper is None:
        upper = len(err)
    left = start
    right = start + len(core_err)
    take_left = True
    while len(err[left:right]) < wanted:
        moved = False
        if take_left and left > lower:
            left -= 1
            moved = True
        elif not take_left and right < upper:
            right += 1
            moved = True
        elif left > lower:
            left -= 1
            moved = True
        elif right < upper:
            right += 1
            moved = True
        if not moved:
            break
        take_left = not take_left
    before = err[left:start]
    after = err[start + len(core_err):right]
    return before + core_err + after, before + core_norm + after


def escape(value):
    escaped = []
    for character in value:
        if character in '%{}"':
            escaped.append("%")
        escaped.append(character)
    return "".join(escaped)


def rule_for(err, start, core_err, core_norm, args, stats, prefix,
             lower=0, upper=None):
    """Turn one differing region into a safe productive rule."""
    if len(core_err) > args.max_span or len(core_norm) > args.max_span:
        stats[prefix + "span_too_long"] += 1
        return None
    if cheap(core_err, core_norm):
        stats[prefix + "cheap_editdist"] += 1
        return None
    rule_err, rule_norm = contextualise(
        err, start, core_err, core_norm, args.min_context, lower, upper)
    if len(rule_err) < args.min_context:
        stats[prefix + "no_context"] += 1
        return None
    if len(rule_err) > args.max_rule or len(rule_norm) > args.max_rule:
        stats[prefix + "rule_too_long"] += 1
        return None
    if not rule_err:
        stats[prefix + "empty_lhs"] += 1
        return None
    if rule_err == rule_norm:
        stats[prefix + "identity_rule"] += 1
        return None
    if not (set(rule_err) | set(rule_norm)) <= ALLOWED:
        stats[prefix + "outside_alphabet"] += 1
        return None
    return rule_err, rule_norm


def extract(lines, args, output, stats_output):
    stats = Counter()
    rules = Counter()
    support = defaultdict(set)
    solo = set()

    for source_err, source_norm, lemma in input_pairs(lines, stats):
        err, norm = source_err.lower(), source_norm.lower()
        if err == norm:
            stats["drop_identity"] += 1
            continue
        stats["spans_computed"] += 1
        differing = regions(err, norm, args.max_gap)
        if len(differing) > 1:
            stats["multi_region_pairs"] += 1
            if len(differing) > args.max_regions:
                stats["mr_drop_too_many_regions"] += 1
                continue
            for index, (start, core_err, core_norm) in enumerate(differing):
                stats["mr_regions_seen"] += 1
                lower = (differing[index - 1][0] + len(differing[index - 1][1])
                         if index else 0)
                upper = (differing[index + 1][0]
                         if index + 1 < len(differing) else len(err))
                rule = rule_for(err, start, core_err, core_norm, args, stats,
                                "mr_drop_", lower, upper)
                if rule is None:
                    continue
                stats["mr_rules_before_aggregation"] += 1
                rules[rule] += 1
                support[rule].add(lemma)
            continue

        start, core_err, core_norm = span(err, norm)
        rule = rule_for(err, start, core_err, core_norm, args, stats, "drop_")
        if rule is None:
            continue
        stats["rules_before_aggregation"] += 1
        rules[rule] += 1
        support[rule].add(lemma)
        solo.add(rule)

    stats["rules_aggregated"] = len(rules)
    final = [
        (rule, count) for rule, count in rules.items()
        if count >= args.min_count and len(support[rule]) >= args.min_support
    ]
    stats["drop_below_threshold"] = len(rules) - len(final)
    stats["rules_emitted"] = len(final)
    stats["rules_emitted_multi_region_only"] = sum(
        1 for rule, _ in final if rule not in solo)
    stats["rules_emitted_deletions"] = sum(
        1 for (rule_err, rule_norm), _ in final if rule_err and not rule_norm)
    stats["rules_emitted_expansions"] = sum(
        1 for (rule_err, rule_norm), _ in final if len(rule_norm) > len(rule_err))
    multi_weight = args.weight if args.multi_weight is None else args.multi_weight
    deletion_weight = (args.weight if args.deletion_weight is None
                       else args.deletion_weight)
    expansion_weight = (args.weight if args.expansion_weight is None
                        else args.expansion_weight)
    final.sort(key=lambda item: (-item[1], item[0]))
    output.write("! Generated by extract-errorth-strings.py - do not edit.\n")
    output.write("! Productive alternations recovered from tracked +Err/Orth pairs.\n")
    output.write("! %d rules, weight %s, min context %d.\n" % (
        len(final), fmt_weight(args.weight), args.min_context))
    output.write("! %d come only from multi-region pairs, at weight %s.\n" % (
        stats["rules_emitted_multi_region_only"], fmt_weight(multi_weight)))
    output.write("! %d deletion rules have weight %s.\n" % (
        stats["rules_emitted_deletions"], fmt_weight(deletion_weight)))
    output.write("! %d expansion rules have weight %s.\n\n" % (
        stats["rules_emitted_expansions"], fmt_weight(expansion_weight)))
    output.write("[\n\n")
    for index, ((rule_err, rule_norm), count) in enumerate(final):
        right = "{%s}" % escape(rule_norm) if rule_norm else "0"
        if not rule_norm:
            weight = (deletion_weight if (rule_err, rule_norm) in solo
                      else max(deletion_weight, multi_weight))
        elif len(rule_norm) > len(rule_err):
            weight = (expansion_weight if (rule_err, rule_norm) in solo
                      else multi_weight)
        else:
            weight = args.weight if (rule_err, rule_norm) in solo else multi_weight
        output.write("{%s} (->) %s::%s%s\t! %d forms, %d lemmas\n" % (
            escape(rule_err), right, fmt_weight(weight),
            " ," if index + 1 < len(final) else "", count,
            len(support[(rule_err, rule_norm)])))
    output.write("\n]\n;\n")

    stat_names = (
        "rows_read", "pairs_read", "drop_non_errorth", "drop_unparseable",
        "drop_empty", "drop_identity", "spans_computed", "drop_span_too_long",
        "drop_cheap_editdist", "drop_no_context", "drop_rule_too_long",
        "drop_empty_lhs", "drop_identity_rule", "drop_outside_alphabet",
        "rules_before_aggregation", "multi_region_pairs",
        "mr_drop_too_many_regions", "mr_regions_seen", "mr_drop_span_too_long",
        "mr_drop_cheap_editdist", "mr_drop_no_context",
        "mr_drop_rule_too_long", "mr_drop_empty_lhs",
        "mr_drop_identity_rule", "mr_drop_outside_alphabet",
        "mr_rules_before_aggregation", "rules_aggregated",
        "drop_below_threshold", "rules_emitted",
        "rules_emitted_multi_region_only", "rules_emitted_deletions",
        "rules_emitted_expansions",
    )
    for name in stat_names:
        stats_output.write("%-32s %d\n" % (name, stats[name]))


def fmt_weight(weight):
    return "%g" % weight


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("-i", "--input", default="-")
    parser.add_argument("-o", "--output", default="-")
    parser.add_argument("--stats", default="-")
    parser.add_argument("--weight", type=float, default=10.0)
    parser.add_argument("--multi-weight", type=float, default=25.0)
    parser.add_argument("--deletion-weight", type=float)
    parser.add_argument("--expansion-weight", type=float)
    parser.add_argument("--max-regions", type=int, default=4)
    parser.add_argument("--min-context", type=int, default=3)
    parser.add_argument("--max-span", type=int, default=8)
    parser.add_argument("--max-gap", type=int, default=1)
    parser.add_argument("--max-rule", type=int, default=14)
    parser.add_argument("--min-count", type=int, default=1)
    parser.add_argument("--min-support", type=int, default=1)
    args = parser.parse_args()

    source = sys.stdin if args.input == "-" else open(
        args.input, encoding="utf-8")
    output = sys.stdout if args.output == "-" else open(
        args.output, "w", encoding="utf-8")
    stats_output = sys.stderr if args.stats == "-" else open(
        args.stats, "w", encoding="utf-8")
    try:
        extract(source, args, output, stats_output)
        output.flush()
    finally:
        if source is not sys.stdin:
            source.close()
        if output is not sys.stdout:
            output.close()
        if stats_output is not sys.stderr:
            stats_output.close()


if __name__ == "__main__":
    main()
