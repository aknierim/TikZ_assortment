TeXInputs = TEXINPUTS=../..:

all: build/three_level.pdf

build/three_level.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc three_level.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
