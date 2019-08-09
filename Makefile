.PHONY: en pt all clean clean.all

all: en pt

en: src_en.tex
	latexmk -pdf -xelatex --jobname=en-GB -use-make src_en.tex

pt: src_pt.tex
	latexmk -pdf -xelatex --jobname=pt-GB -use-make src_pt.tex

clean:
	latexmk -c
	rm -f *.aux *.log *.out *.dvi *.fdb_latexmk *.fls

clean.all:
	latexmk -CA
	rm -f *.pdf *.aux *.log *.out *.dvi *.fdb_latexmk *.fls
