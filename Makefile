MAIN = main-ndss18

all: pdf

pdf: ${MAIN}.pdf

${MAIN}.pdf: *.tex IEEEtran.cls IEEEtranS.bst
	pdflatex ${MAIN}.tex
	bibtex ${MAIN}.aux

clean:
	rm -f ./${MAIN}.pdf
	rm -f ./${MAIN}.ps
	rm -f ./${MAIN}.out
	rm -f ./${MAIN}.blg
	rm -f ./${MAIN}.log
