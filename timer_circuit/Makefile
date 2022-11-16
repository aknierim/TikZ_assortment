#!/bin/bash
pwd := $$(pwd)

# LaTeX options to disable interruptions
TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build


all: timer_circuit.pdf


timer_circuit.pdf: FORCE | build
	@TEXINPUTS=$$(pwd): latexmk $(TeXOptions) timer_circuit.tex 1> build/log || cat build/log
	mv build/timer_circuit.pdf $@

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean