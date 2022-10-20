#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: heitler_model.pdf


heitler_model.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) heitler_model.tex 1> build/log || cat build/log
	mv build/heitler_model.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean