#!/usr/bin/env python3
"""Generate an area edit-distance source from the shared default model."""

import argparse
from pathlib import Path


AREA_VOWELS = {
    "NO": "æ",
    "SE": "ä",
}


def generate(source: str, area: str) -> str:
    vowel = AREA_VOWELS[area]
    if vowel == "æ":
        return source

    replacements = 0
    output = []
    for line in source.splitlines(keepends=True):
        fields = line.rstrip("\r\n").split("\t")
        if len(fields) >= 2 and (fields[0], fields[1]) == ("e", "æ"):
            fields[1] = vowel
            replacements += 1
        elif len(fields) >= 2 and (fields[0], fields[1]) == ("æ", "e"):
            fields[0] = vowel
            replacements += 1
        else:
            output.append(line)
            continue

        ending = line[len(line.rstrip("\r\n")):]
        output.append("\t".join(fields) + ending)

    if replacements != 2:
        raise ValueError(
            f"expected both e↔æ directions in the default model; found {replacements}"
        )
    return "".join(output)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--area", choices=sorted(AREA_VOWELS), required=True)
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    source = args.input.read_text(encoding="utf-8")
    args.output.write_text(generate(source, args.area), encoding="utf-8")


if __name__ == "__main__":
    main()
