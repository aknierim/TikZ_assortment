#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: Dulong_Petit_dewar.pdf


Dulong_Petit_dewar.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) Dulong_Petit_dewar.tex 1> build/log || cat build/log
	mv build/Dulong_Petit_dewar.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean