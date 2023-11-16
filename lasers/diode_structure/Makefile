TeXInputs = TEXINPUTS=../..:

all: build/diode_structure.pdf

build/diode_structure.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc diode_structure.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
