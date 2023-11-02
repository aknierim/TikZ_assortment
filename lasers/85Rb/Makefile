TeXInputs = TEXINPUTS=../..:

all: build/85Rb.pdf

build/85Rb.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc 85Rb.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
