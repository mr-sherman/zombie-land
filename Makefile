# Build the Zombieland deck.
#
# The speaker notes ("talk track") live only in slides/zombieland.full.md,
# which is private and not committed. `make` strips the notes from it to
# produce slides/zombieland.md (the committed, public source), then builds
# docs/index.html and zombieland.pdf from that.
#
#   make          strip notes, build public HTML into docs/, and the PDF
#   make present  HTML with speaker notes for presenting locally
#
# Set MARP to your marp binary if it is not on PATH, e.g.
#   make MARP=~/.npm-global/bin/marp

MARP ?= marp
FULL := slides/zombieland.full.md
SRC := slides/zombieland.md

.PHONY: all strip html pdf present clean

all: html pdf

strip $(SRC): $(FULL) scripts/strip_notes.py
	python3 scripts/strip_notes.py $(FULL) $(SRC)

html: $(SRC)
	$(MARP) $(SRC) -o docs/index.html < /dev/null
	mkdir -p docs/images
	cp slides/images/*.svg docs/images/

pdf: $(SRC)
	$(MARP) $(SRC) --pdf --allow-local-files -o zombieland.pdf < /dev/null

present:
	$(MARP) $(FULL) -o slides/zombieland.notes.html < /dev/null

clean:
	rm -f slides/zombieland.notes.html
