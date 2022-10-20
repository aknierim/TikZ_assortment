#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: cherenkov_radiation.pdf


cherenkov_radiation.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) cherenkov_radiation.tex 1> build/log || cat build/log
	mv build/cherenkov_radiation.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean