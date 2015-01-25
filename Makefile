all: thesis view

thesis:
	pdflatex -interaction=batchmode phd-thesis.tex
	biber phd-thesis
	pdflatex -interaction=batchmode phd-thesis.tex
	pdflatex -interaction=batchmode phd-thesis.tex
	pdflatex -interaction=batchmode phd-thesis.tex

view:
	evince phd-thesis.pdf &

clean:
	find . -regextype posix-egrep -regex  ".*\.(pdf|dvi|log|toc|aux|bbl|lot|lof|blg|bcf|ps)" -type f -delete


