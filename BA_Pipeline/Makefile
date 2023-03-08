TeXInputs = TEXINPUTS=..:

all: data_pipeline.pdf

data_pipeline.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc data_pipeline.tex

FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build

.PHONY: FORCE all clean
