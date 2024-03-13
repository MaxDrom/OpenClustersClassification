NAME=OpenClusters.pdf
TEXNAME=OpenClusters.tex
TMPNAME=$(patsubst %.tex, %1.pdf, $(TEXNAME))
all: $(NAME)

$(NAME): $(TEXNAME) bibliography.bib
	pdflatex -interaction=nonstopmode $(TEXNAME) > main.mk1.log
	bibtex $(patsubst %.tex, %.aux, $(TEXNAME))
	pdflatex -interaction=nonstopmode $(TEXNAME) > main.mk1.log
	pdflatex -interaction=nonstopmode $(TEXNAME) > main.mk2.log