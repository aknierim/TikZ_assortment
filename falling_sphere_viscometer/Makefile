TeXInputs = TEXINPUTS=..:

all: build/falling_sphere_viscometer.pdf

build/falling_sphere_viscometer.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc falling_sphere_viscometer.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
