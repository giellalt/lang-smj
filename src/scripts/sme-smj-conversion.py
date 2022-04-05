#!/usr/bin/env python3
#
# orig. from:
# smi-smj-conversion.pl
# Convert names in the SMI propernoun lexicon to smj.

from sys import argv
import re


def main():
    """CLI entry point"""
    alpha9 = re.compile("([a-z])9 ")
    x9wb = re.compile("([^jktsp])9([#-])")
    ss9 = re.compile("ss ([^;])")
    st9 = re.compile("st ([^;])")
    h9wb = re.compile("t:(.*)h([ #])")
    vow = "[ÁAEIOUáaeiou]"
    nvow = "[^ÁAEIOIáeioou]"
    stuff = re.compile("(" + vow + ")i([^j].*):(.*)(" +
                       vow + ")j(" + nvow + ")")
    with open(argv[1], "r", encoding="UTF-8") as f:
        for l in f:
            if "+OLang" in l:
                continue
            elif "+Err" in l:
                continue
            elif l.startswith("!"):
                print(l.rstrip())
                continue
            elif not l.strip():
                print()
                continue
            elif ';' not in l:
                print(l.rstrip())
                continue
            elif l.startswith('<'):
                # skip regexes
                continue
            l = l.replace("% ", "___")
            l = l.replace(" C-FI-NEN", "nen LONDON").replace("SUND",
                          "BERN").replace("HEIM", "BERN").replace("NIKOSIIJA",
                          "ACCRA").replace("SIJTE", "ACCRA").replace("BALAK",
                          "ANAR").replace("HAWAII", "ACCRA").replace("SKANIK",
                          "SULLOT").replace("Jerusalem", "!Jerusalem")
            l = l.replace("j9 ", "j ").replace("7 ", " ").replace("8 ",
                          " ").replace("d9-", "d-").replace("7#",
                          "#").replace("8#,", "#").replace("7-,",
                          "-") .replace("8-", "-")
            l = alpha9.sub("\\1 ", l)
            l = x9wb.sub("\\1\\2", l)
            l = l.replace("ss#", "ss9#").replace("st#", "st9#")
            l = ss9.sub("ss9 \\1", l)
            l = st9.sub("st9 \\1", l)
            l = h9wb.sub("t:\\1d9\\2", l)
            l = stuff.sub("\\1i\\2:\\3\\4i\\5", l)
            fields = l.split()
            if ":" in fields[0]:
                left = fields[0].split(":")[0].replace("___", "% ")
                right = fields[0].split(":")[1].replace("___", "% ")
            else:
                left = fields[0].replace("___", "% ")
                right = fields[0].replace("___", "% ")
            rest = '  '.join(fields[1:]).rstrip()
            right = left.replace("ä", "ä9").replace("æ", "æ9")
            left = left + "+OLang/SME"
            print(f"{left}:{right} {rest[:]}")


if __name__ == "__main__":
    main()
