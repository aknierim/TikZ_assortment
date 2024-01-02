TeXInputs = TEXINPUTS=../..:

all: build/x_ray_tube.pdf

build/x_ray_tube.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc x_ray_tube.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
