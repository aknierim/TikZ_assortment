TeXInputs = TEXINPUTS=../..:

all: build/sagnac.pdf

build/sagnac.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc sagnac.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
