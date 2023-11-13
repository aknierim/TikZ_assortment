TeXInputs = TEXINPUTS=../..:

all: build/diode_laser.pdf

build/diode_laser.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc diode_laser.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
