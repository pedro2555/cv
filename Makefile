cv: en-GB.pdf pt-PT.pdf

en-GB.pdf: src_en.tex
	xelatex --jobname=en-GB src_en.tex

pt-PT.pdf: src_pt.tex
	xelatex --jobname=pt-PT src_pt.tex

clean:
	rm -f *.pdf *.aux *.log *.out