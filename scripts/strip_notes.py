#!/usr/bin/env python3
"""Copy a Marp deck, removing speaker-note comments.

Usage: strip_notes.py INPUT.md OUTPUT.md

Marp directives such as <!-- _class: image --> are kept. Any other HTML
comment (the talk track) is removed, so the public build has no notes.
"""
import re
import sys

DIRECTIVE = re.compile(r"^\s*_?[A-Za-z]+\s*:\s*\S")


def keep(match):
    body = match.group(1)
    first = body.strip().splitlines()[0] if body.strip() else ""
    is_notes = re.match(r"\s*talk\s*track\s*:", body, re.I)
    if not is_notes and DIRECTIVE.match(first) and "\n" not in body.strip():
        return match.group(0)
    return ""


def main(src, dst):
    text = open(src, encoding="utf-8").read()
    text = re.sub(r"<!--(.*?)-->", keep, text, flags=re.S)
    open(dst, "w", encoding="utf-8").write(text)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    main(*sys.argv[1:])
