TeXInputs = TEXINPUTS=..:

all: build/pulsar.pdf

build/pulsar.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc pulsar.tex

preview: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc -pvc pulsar.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
