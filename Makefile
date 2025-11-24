MAIN = Beamer-Template_Main
RM = rm -f

FIGURES = Figures/

evince:
	evince $(MAIN).pdf
main:
	./compiler_linux_xelatex $(MAIN)

all: main evince clean

clean:
	-@$(RM) *.tex~ .*.tex.swp *~
	-@$(RM) *.aux *.log *.nav *.out *.snm *.toc

cleanall: clean
	-@$(RM) $(MAIN).pdf
