DIASDIR=../Diagramas
DIAS=$(wildcard ${DIASDIR}/*.dia) $(wildcard ${DIASDIR}/*/*.dia)
PDFDIAS:=$(subst ${DIASDIR},${DIASDIR}/pdf,${DIAS})
PDFDIAS:=$(PDFDIAS:.dia=.pdf)

all: diagramas pdf

pdf: Descripcion.tex $(wildcard */*.tex)
	pdflatex $< > /dev/null
	rm *.aux *.toc *.log

diagramas: ${PDFDIAS}

${DIASDIR}/pdf/%.pdf: ${DIASDIR}/%.dia
	mkdir -p $(dir $@)
	inkscape --export-pdf=$@ $<
