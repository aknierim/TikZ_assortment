TeXInputs = TEXINPUTS=..:

all: build/Heitler_model.pdf

build/Heitler_model.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc Heitler_model.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
