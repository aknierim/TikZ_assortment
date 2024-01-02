TeXInputs = TEXINPUTS=..:

all: build/bremsstrahlung.pdf

build/bremsstrahlung.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc bremsstrahlung.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
