.DEFAULT_GOAL := html

# Pastas devem conter a / final.
MAIN=sage-tl.xml
MBXDIR=mathbook/
XSLPROC=/usr/bin/xsltproc
XSLOPT=--xinclude
OUTDIR=build/

all: html jupyter latex smc

html:
	$(XSLPROC) $(XSLOPT) -o ${addsuffix html/sage-tl.html, ${OUTDIR}} ${addsuffix xsl/pretext-html.xsl, ${MBXDIR}} $(MAIN)
	cp -R figs/ ${addsuffix html/, ${OUTDIR}}

jupyter:
	$(XSLPROC) $(XSLOPT) -o ${addsuffix jupyter/, ${OUTDIR}} ${addsuffix xsl/pretext-jupyter.xsl, ${MBXDIR}} $(MAIN)

latex:
	$(XSLPROC) $(XSLOPT) -o ${addsuffix latex/sage-tl.tex, ${OUTDIR}} ${addsuffix xsl/pretext-latex.xsl, ${MBXDIR}} $(MAIN)

smc:
	$(XSLPROC) $(XSLOPT) -o ${addsuffix smc/sage-tl ${OUTDIR}} ${addsuffix xsl/pretext-smc.xsl, ${MBXDIR}} $(MAIN)

init:
