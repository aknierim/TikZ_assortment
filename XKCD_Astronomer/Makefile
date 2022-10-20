#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: xkcd_astronomer.pdf


xkcd_astronomer.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) xkcd_astronomer.tex 1> build/log || cat build/log
	mv build/xkcd_astronomer.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean