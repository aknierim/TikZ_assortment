TeXInputs = TEXINPUTS=..:

SVGFILES := iact_1.svg iact_2.svg iact_3.svg iact_4.svg iact_5.svg iact_6.svg


define inksvg
	inkscape \
				--pdf-poppler \
				--pdf-page=$(subst iact_,,$(basename $(1)))\
				--export-type=svg \
				--export-text-to-path \
				--export-area-drawing \
				--export-filename=build/$(1) \
				build/iact.pdf
endef


all: build/iact.pdf $(SVGFILES)

build/iact.pdf: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc iact.tex

preview: FORCE | build
	$(TeXInputs) latexmk -r ../latexmkrc -pvc iact.tex 

$(SVGFILES): build/iact.pdf
	$(call inksvg,$@)

build:
	mkdir -p build/

clean:
	rm -rf build

FORCE:

.PHONY: FORCE all clean
