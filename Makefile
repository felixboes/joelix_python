LATEX=latexmk
LATEX_OPTS=-pdf
BIBTEX=biber
TITEL=python_skript

PICTURES_DIR=./pictures
PICTURES_SVG=$(wildcard $(PICTURES_DIR)/*.svg)
PICTURES_PDF=$(patsubst $(PICTURES_DIR)/%, $(PICTURES_DIR)/%, $(PICTURES_SVG:.svg=.pdf)) 


EXECUTE_BEFORE_BUILD_CHEAT := $(shell echo '\\newcommand{\\gitversion}{'$(shell git rev-parse HEAD 2>/dev/null)'}' > gitversion.tex)

all: %: $(PICTURES_PDF)
	$(LATEX) $(LATEX_OPTS) $(TITEL)

pictures: %: $(PICTURES_PDF)

./pictures/%.pdf: ./pictures/%.svg 
	inkscape -z -D --file=$< --export-pdf=$@ --export-latex;
	pdf2ps $@ $@.ps;
	ps2pdf $@.ps $@;
	rm -f $@.ps;


.PHONY: clean
clean:
	rm -f $(TITEL).aux $(TITEL).bbl $(TITEL).blg $(TITEL).fdb_latexmk $(TITEL).fls $(TITEL).log $(TITEL).out $(TITEL).pdf $(TITEL).synctex.gz $(TITEL).toc

.PHONY: cleanpics
cleanpics:
	rm -f ./pictures/*.pdf ./pictures/*.pdf_tex

