#!/bin/bash
pwd := $$(pwd)

FILES = iact_dark.pdf iact_light.pdf iact_dark_de.pdf iact_light_de.pdf

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: $(FILES)


$(FILES): FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) $(basename $@).tex 1> build/log || cat build/log
	mv build/$@ $@

preview: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) -pvc iact_dark.tex 

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
