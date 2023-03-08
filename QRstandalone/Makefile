TeXInputs = TEXINPUTS=..:

all: build/qr.pdf

build/qr.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc qr.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
