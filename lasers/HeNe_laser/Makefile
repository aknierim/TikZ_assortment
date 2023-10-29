TeXInputs = TEXINPUTS=../..:

all: build/HeNe_laser.pdf

build/HeNe_laser.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc HeNe_laser.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
