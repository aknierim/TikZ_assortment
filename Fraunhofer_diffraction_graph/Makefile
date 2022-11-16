#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: Fraunhofer_diffraction_graph.pdf


Fraunhofer_diffraction_graph.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) Fraunhofer_diffraction_graph.tex 1> build/log || cat build/log
	mv build/Fraunhofer_diffraction_graph.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean