#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: iact_dark.pdf


iact_dark.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) iact_dark.tex 1> build/log || cat build/log
	mv build/iact_dark.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean