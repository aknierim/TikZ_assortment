TeXInputs = TEXINPUTS=../..:

all: build/hexagons.pdf

build/hexagons.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc hexagons.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
