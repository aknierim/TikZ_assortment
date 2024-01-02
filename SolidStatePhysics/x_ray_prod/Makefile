TeXInputs = TEXINPUTS=../..:

all: build/x_ray_prod.pdf

build/x_ray_prod.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../../latexmkrc x_ray_prod.tex


FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
