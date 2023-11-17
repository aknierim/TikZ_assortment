TeXInputs = TEXINPUTS=../..:

all: build/energy_bands.pdf

build/energy_bands.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc energy_bands.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
