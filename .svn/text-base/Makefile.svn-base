FILE=phd-thesis
#FILE=report-sep2009


all: clean thesis bib thesis2 thesis3 view
 
thesis:
	pdflatex ${FILE}.tex

thesis2:
	pdflatex ${FILE}.tex

thesis3:
	pdflatex ${FILE}.tex

bib: 
	bibtex ${FILE}.aux

clean: 
	rm -rf *.pdf *.dvi *.log *.toc *.aux *.bbl *.lot *.lof *.blg
	cd background;  rm -rf *.pdf *.dvi *.log *.toc *.aux *.bbl *.lot *.lof *.blg
	cd model;  rm -rf *.pdf *.dvi *.log *.toc *.aux *.bbl *.lot *.lof *.blg

getbib:
	cp ~/bib/dissp.bib bibliography

# SVN

add: 
	svn add * --force

co:
	svn co svn+ssh://mfiscato@dambala.doc.ic.ac.uk/homes/mfiscato/mysvn/report-sep2009 .

commit:
	svn ci

view:
	evince ${FILE}.pdf &
	
