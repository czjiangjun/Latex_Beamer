MAIN = Beamer-Template_Main
Temp_Dir = Beamer_Template
RM = rm -f

FIGURES = Figures/
CUR_PWD = $(shell pwd)

find:
	@echo $(CUR_PWD)

# PATHFIG=`pwd`

evince:
	evince $(MAIN).pdf
main:
	xelatex -shell-escape $(MAIN)
	-@bibtex $(MAIN)
	xelatex -shell-escape $(MAIN)
	xelatex -shell-escape $(MAIN)

all: main evince # clean

clean:
	-@$(RM) *.tex~ *.aux *.bbl *.dvi *.blg *.bcf *.out *.log *.nav *.thm *.snm *.toc *.vrb *.*.xml *.*~ *~ .*.swp
	cd $(Temp_Dir)
	-@$(RM) *.tex~ *.aux *.bbl *.dvi *.blg *.bcf *.out *.log *.nav *.thm *.snm *.toc *.vrb *.*.xml *.*~ *~ .*.swp

cleanall: clean
	-@$(RM) $(MAIN).pdf
