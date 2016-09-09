python-evaluation-rules.pdf: python-evaluation-rules.tex
	pdflatex $<
	pdflatex $<
# For some reason, a third execution is required to eliminate LaTeX warnings.
	pdflatex $<

# This is not currently working.
python-evaluation-rules.html: python-evaluation-rules.tex
	pdflatex $<
	hevea $<

clean:
	rm -f python-evaluation-rules.aux python-evaluation-rules.dvi python-evaluation-rules.haux python-evaluation-rules.html python-evaluation-rules.htoc python-evaluation-rules.image.tex python-evaluation-rules.log python-evaluation-rules.out python-evaluation-rules.ps python-evaluation-rules.toc
