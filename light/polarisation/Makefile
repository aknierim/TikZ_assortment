TeXInputs = TEXINPUTS=../..:

all: build/lin_polarisation.pdf

build/lin_polarisation.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc lin_polarisation.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
