DIA=../Diagramas

all: diagramas pdf

pdf: Descripcion.tex Funcionalidades/* Operaciones/*
	pdflatex $< > /dev/null
	rm *.aux *.toc *.log

diagramas: ${DIA}/* diagramas_consejos
	for d in `ls ${DIA} | grep .dia$$` ; do inkscape --export-pdf=${DIA}/pdf/$${d%.dia}.pdf ${DIA}/$$d ; done

diagramas_consejos: ${DIA}/Consejos/*
	for d in `ls ${DIA}/Consejos | grep .dia$$` ; do inkscape --export-pdf=${DIA}/pdf/$${d%.dia}.pdf ${DIA}/Consejos/$$d ; done

