TeXInputs = TEXINPUTS=..:

all: build/timer_circuit.pdf

build/timer_circuit.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc timer_circuit.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
