TeXInputs = TEXINPUTS=..:

all: build/cherenkov_radiation.pdf

build/cherenkov_radiation.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc cherenkov_radiation.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
