#!/usr/bin/env python3
#
# orig. from:
# smi-smj-conversion.pl
# Convert names in the SMI propernoun lexicon to smj.
"""
Converter tool for GiellaLT North Sámi proper nouns in lexc format to Lule
Sámi.
"""
from sys import argv
import re


def xxxescape(s):
    """hide lexc spaces and colons from split"""
    return s.replace("% ", "___").replace("%:", "@KOOLON@")


def xxxunescape(s):
    """unhide lexc spaces and colons"""
    return s.replace("___", "% ").replace("@KOOLON@", "%:")


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
        for line in f:
            if "+OLang" in line:
                continue
            elif "+Err" in line:
                continue
            elif line.startswith("!"):
                print(line.rstrip())
                continue
            elif not line.strip():
                print()
                continue
            elif ";" not in line:
                print(line.rstrip())
                continue
            elif line.startswith("<"):
                # skip regexes
                continue
            line = xxxescape(line)
            line = line.replace(" C-FI-NEN", "nen LONDON").replace("SUND",
                    "BERN").replace("HEIM",
                    "BERN").replace("NIKOSIIJA",
                    "ACCRA").replace("SIJTE",
                    "ACCRA").replace("BALAK",
                    "ANAR").replace("HAWAII",
                    "ACCRA").replace("SKANIK",
                    "SULLOT").replace("Jerusalem", "!Jerusalem")
            line = line.replace("j9 ", "j ").replace("7 ", " ").replace("8 ",
                    " ").replace("d9-", "d-").replace("7#",
                    "#").replace("8#,", "#").replace("7-,",
                    "-") .replace("8-", "-")
            line = alpha9.sub("\\1 ", line)
            line = x9wb.sub("\\1\\2", line)
            line = line.replace("ss#", "ss9#").replace("st#", "st9#")
            line = ss9.sub("ss9 \\1", line)
            line = st9.sub("st9 \\1", line)
            line = h9wb.sub("t:\\1d9\\2", line)
            line = stuff.sub("\\1i\\2:\\3\\4i\\5", line)
            fields = line.split()
            if ":" in fields[0]:
                left = xxxunescape(fields[0].split(":")[0])
                right = xxxunescape(fields[0].split(":")[1])
            else:
                left = xxxunescape(fields[0])
                right = xxxunescape(fields[0])
            rest = "  ".join(fields[1:]).rstrip()
            left = left.replace("ä", "ä9").replace("æ", "æ9")
            left = left + "+OLang/SME"
            print(f"{left}:{right} {rest}")


if __name__ == "__main__":
    main()
