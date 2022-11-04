#!/bin/bash
pwd := $$(pwd)

TIKZFILES := $(wildcard *.tex) # list of all TikZ files
TIKZ_PDFS := $(subst ,,$(TIKZFILES:.tex=.pdf)) # get names from TikZ files for .pdf output files
TIKZ_LOG := $(addprefix build/,$(TIKZ_PDFS)) # add build/ to TikZ output files

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: $(TIKZ_PDFS) move


test:
	@echo build/$(basename $(notdir $(TIKZ_LOG)))

$(TIKZ_PDFS): FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) $(TIKZFILES) 1> \
		build/$(basename $(notdir $@))_log || cat build/$(basename $(notdir $@))_log

move:
	@mv build/*.pdf .


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean move