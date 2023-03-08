TeXInputs = TEXINPUTS=..:

all: build/xkcd_astronomer_dark.pdf

build/xkcd_astronomer_dark.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc xkcd_astronomer_dark.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
