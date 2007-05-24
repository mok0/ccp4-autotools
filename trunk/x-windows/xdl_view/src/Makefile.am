## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 18:08:58 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

libxdl_view_la_SOURCES = xdl_base_fr.c xdl_blank_obj.c xdl_image.c \
  xdl_bg.c xdl_img_rd.c xdl_film_img.c xdl_io_window.c \
  xdl_menu_area.c xdl_text_tab.c xdl_panel_itm.c \
  xdl_parm_tab.c xdl_pop_dialg.c xdl_pop_frame.c xdl_pop_menu.c \
  xdl_pop_notic.c xdl_prog_bar.c xdl_layout.c xdl_graph_win.c \
  xdl_control.c xdl_view.c xdl_panel_itm.h xdl_view.h \
  xdl_systyp.h xdl_view_ext.h xdl_view_ext.h

libxdl_viewextra_la_SOURCES = xdl_laue_sim.c \
   xdl_show_unq.c unq.h xdl_rot_sim.c prl.h

lib_LTLIBRARIES = libxdl_view.la libxdl_viewextra.la

libxdl_view_la_LDFLAGS = -version-info 2:0:0
libxdl_viewextra_la_LDFLAGS = -version-info 0:0:0

EXTRA_DIST = doc/xdl_view_icon.gif doc/xdl_view_top.gif			 \
  doc/xdl_view_top.html doc/xdl_view_updates.html			 \
  doc/xdl_vol1_ch1.html doc/xdl_vol1_ch1_fig1.gif doc/xdl_vol1_ch2.html	 \
  doc/xdl_vol1_ch2_acts.gif doc/xdl_vol1_ch2_gwin.gif			 \
  doc/xdl_vol1_ch2_img.gif doc/xdl_vol1_ch2_iow.gif			 \
  doc/xdl_vol1_ch2_laue.gif doc/xdl_vol1_ch2_lbw.gif			 \
  doc/xdl_vol1_ch2_menu.gif doc/xdl_vol1_ch2_pbar.gif			 \
  doc/xdl_vol1_ch2_pdiag.gif doc/xdl_vol1_ch2_pmen.gif			 \
  doc/xdl_vol1_ch2_pnot.gif doc/xdl_vol1_ch2_ptab.gif			 \
  doc/xdl_vol1_ch2_rbw.gif doc/xdl_vol1_ch2_rot.gif			 \
  doc/xdl_vol1_ch2_ttab.gif doc/xdl_vol1_ch2_unq.gif			 \
  doc/xdl_vol1_ch3.html doc/xdl_vol1_ch3_pan1.gif			 \
  doc/xdl_vol1_ch3_pan2.gif doc/xdl_vol1_ch4.html doc/xdl_vol2_ch1.html	 \
  doc/xdl_vol2_ch1_examp.gif doc/xdl_vol2_ch2.html doc/xdl_vol2_ch3.html \
  doc/xdl_vol2_ch4.html doc/xdl_vol2_ch5.html doc/xdl_vol2_ch6.html	 \
  doc/xdl_vol2_ch7.html doc/xdl_vol3_ch1.html doc/xdl_vol3_ch2_s1.html	 \
  doc/xdl_vol3_ch2_s10.html doc/xdl_vol3_ch2_s11.html			 \
  doc/xdl_vol3_ch2_s12.html doc/xdl_vol3_ch2_s13.html			 \
  doc/xdl_vol3_ch2_s14.html doc/xdl_vol3_ch2_s15.html			 \
  doc/xdl_vol3_ch2_s16.html doc/xdl_vol3_ch2_s17.html			 \
  doc/xdl_vol3_ch2_s2.html doc/xdl_vol3_ch2_s3.html			 \
  doc/xdl_vol3_ch2_s4.html doc/xdl_vol3_ch2_s5.html			 \
  doc/xdl_vol3_ch2_s6.html doc/xdl_vol3_ch2_s7.html			 \
  doc/xdl_vol3_ch2_s8.html doc/xdl_vol3_ch2_s9.html			 \
  doc/xdl_vol3_ch3_s1.html doc/xdl_vol3_ch3_s2.html			 \
  doc/xdl_vol3_ch4.html doc/xdl_vol3_ch5.html				 \
  xdl_lsim_old.c xdl_bg_old.c xdl_rd_old.c

noinst_PROGRAMS = $(TESTS)
TESTS = xdl_eg_c test_graph_win test_menu_area test_param_table \
	test_io_window test_text_table test_evtim xdl_eg_f
TESTS_ENVIRONMENT = XDL_DEBUG=1 _MALLOC_CHECK=1

LDADD = libxdl_view.la $(X_LIBS) ####-lXt -lX11

test_graph_win_SOURCES = test_graph_win.c 
test_graph_win_LDADD = $(LDADD) -lm

test_menu_area_SOURCES = test_menu_area.f
test_menu_area_LDADD = libxdl_view.la

test_param_table_SOURCES = test_param_table.c
test_io_window_SOURCES = test_io_window.c
test_text_table_SOURCES = test_text_table.c
test_evtim_SOURCES = test_evtim.c
xdl_eg_f_SOURCES = xdl_eg_f.f
####
