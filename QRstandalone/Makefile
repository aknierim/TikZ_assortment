#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: qr.pdf


qr.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) qr.tex 1> build/log || cat build/log
	mv build/qr.pdf $@

preview: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) -pvc qr.tex 

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
