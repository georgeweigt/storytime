.PHONY: default clean

# https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

%.pdf: %.tex
	pdflatex $<

default:
	for file in $$(ls *.tex | sed "s/\.tex/\.pdf/") ; do make $$file ; done

clean:
	rm -f *.aux *.log *.synctex.gz
