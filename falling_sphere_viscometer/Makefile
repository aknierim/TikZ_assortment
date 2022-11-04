#!/bin/bash
pwd := $(PWD)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: falling_sphere_viscometer.pdf


falling_sphere_viscometer.pdf: FORCE | build
	@TEXINPUTS=$(pwd): latexmk $(TeXOptions) falling_sphere_viscometer.tex 1> build/log || cat build/log
	mv build/falling_sphere_viscometer.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean