TeXInputs = TEXINPUTS=../..:

all: build/two_level.pdf

build/two_level.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc two_level.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
