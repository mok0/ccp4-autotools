## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 19:54:19 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

bin_PROGRAMS = xplot84driver xccpjiffy2idraw xloggraph
noinst_PROGRAMS = back_font

xplot84driver_SOURCES = xplot84driver.c plot84_file.c msg_box.c ZDr2d.c	\
	EditString.c hardcopy_ctrl.c

xccpjiffy2idraw_SOURCES = xccpjiffy2idraw.l

xloggraph_SOURCES = \
	msg_box.c ZDr2d.c EditString.c hardcopy_ctrl.c \
        xloggraph.c log_file.c tom_fortran_interface.c \
	bits_and_pieces.f graphics.f

back_font_SOURCES = back_font.f


####
