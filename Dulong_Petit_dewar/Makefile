TeXInputs = TEXINPUTS=..:

all: build/Dulong_Petit_dewar.pdf

build/Dulong_Petit_dewar.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc Dulong_Petit_dewar.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
