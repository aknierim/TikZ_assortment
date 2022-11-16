#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: hexagons.pdf # hexagons_en.pdf


hexagons.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) hexagons.tex 1> build/log || cat build/log
	mv build/hexagons.pdf $@

# for later use
# hexagons_en.pdf: FORCE | build
# 	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) hexagons.tex 1> build/log || cat build/log
# 	mv build/hexagons.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
