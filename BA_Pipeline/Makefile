#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: data_pipeline.pdf


data_pipeline.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) data_pipeline.tex 1> build/log || cat build/log
	mv build/data_pipeline.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean