TeXInputs = TEXINPUTS=..:

all: build/optical_pumping.pdf

build/optical_pumping.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc optical_pumping.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
