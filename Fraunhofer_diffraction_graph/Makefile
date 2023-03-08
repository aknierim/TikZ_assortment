TeXInputs = TEXINPUTS=..:

all: build/Fraunhofer_diffraction_graph.pdf

build/Fraunhofer_diffraction_graph.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc Fraunhofer_diffraction_graph.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
