TeXInputs = TEXINPUTS=../..:

all: build/four_level.pdf

build/four_level.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc four_level.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
