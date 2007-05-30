## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/24 20:36:16 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

main_tex_file =  manual.tex

tex_include_files = installation.tex overview.tex running.tex		\
  intro.tex porting.tex fft.tex ir.tex preface.tex			\
  solflat.tex proc-reduc.tex refine.tex support.tex formats.tex		\
  proglist.tex frontmatter.tex molrep.tex resources.tex writing.tex

# Any other files which are \input:
tex_input_files = diff-map.tex patterson.tex solflat-fig.tex startup.tex

epsfiles = blackboard.eps cassini.eps combination.eps diff-map.eps \
  patterson.eps phase-imp.eps replacement.eps wizard.eps

# These are all the bibliography files needed:
bibfiles = ccp4-manual.bib

styfiles = authordate1-4.sty  ccp4-man.cls 

EXTRA_DIST = $(main_tex_file) $(tex_include_files) $(tex_input_files) \
   $(epsfiles) $(bibfiles) $(styfiles)

# Files that safely can be removed by "make clean"
CLEANFILES = manual.aux manual.cpd manual.idx manual.log manual.prx	\
  manual.bbl manual.cpx manual.ilg manual.pdf manual.blg manual.dvi	\
  manual.ind manual.prd manual.toc

DVIPS = dvips
DVIPDF = dvipdf
LATEX = latex
BIBTEX = bibtex

SUFFIXES = .dvi .plt .pdf .tex .ps

# default target
all: manual

manual: manual.pdf manual.ps

nomanual:

# To touch it up after changes:
remake: manual.dvi

manual.dvi: 
	@echo Building LaTeX manual
	$(LATEX) manual
	$(BIBTEX) manual
	$(LATEX) manual

manual.ps: manual.dvi
	@echo "Building LaTeX manual (PS version)"
	$(DVIPS) manual

manual.pdf: manual.dvi
	@echo "Building LaTeX manual (PDF version)"
	$(DVIPDF) manual

install-data-local: manual.pdf manual.ps
	$(mkinstalldirs) $(DESTDIR)/$(docdir) 
	install -m644 manual.pdf $(DESTDIR)/$(docdir)
	install -m644 manual.ps $(DESTDIR)/$(docdir)

####
