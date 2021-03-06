.PHONY: clean

EXTRASTYS = abhepexpt.sty abhep.sty  abmath.sty lineno.sty SIunits.sty varwidth.sty

thesis.pdf: *.cls *.sty thesis.bib thesis.tex *.tex Chapters/*.tex Appendices/*.tex Figures/*/*
	@rm -f thesis.{aux,toc,lof,lot}
	(pdflatex thesis && bibtex thesis && pdflatex thesis && pdflatex thesis)
	@rm -f thesis.{aux,toc,lof,lot}

clean:
	@rm -f thesis.pdf thesis.log thesis.aux
	@rm -f *.bbl *.blg *.lof *.cut
	@rm -f *.lot *.out *.toc
