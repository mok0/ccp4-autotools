## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 18:08:58 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

bin_PROGRAMS = rotgen

rotgen_SOURCES = add_mtz_data.f add_mtzref.f analyse_cntl.f		\
  analyse_data.f analyse_print.f analyse_stats.f calc_prediction.f	\
  cell_chk.f check_rotations.f check_sylat.f choose_soln.f		\
  cmd_input.f cmd_msg.f denzo_amatr.f denzo_rotaxi.f			\
  denzo_setting.f denzo_solveu.f dif2pi.f edit_detector.f		\
  get_cell.f get_mtzfil.f get_phis.f graph_cntl.f highlight_func.f	\
  hklcmp.f icmpr.f init_flags.f init_settings.f init_templates.f	\
  intfp.f iow_askf.f iow_askf_timeout.f iow_askq.f iow_read.f		\
  iow_read_timeout.f key_setup.f ljust.f lmessage.f log_results.f	\
  lprompt.f mtz_anal_cntl.f mtz_anal_data.f mtz_graph_cntl.f		\
  mtzcmp.f others_upd.f out_spots.f out_spots_quick.f			\
  ovlp_anal_cntl.f ovlp_cntl.f ovlp_log_results.f ovlp_sorfun.f		\
  ovlp_sorfun2.f ovlp_strat_calc.f ovlp_strat_cntl.f par_chk.f		\
  par_inp_cdiv.f par_input.f predict_all.f quick_anal_cntl.f		\
  quick_anal_data.f quick_graph_cntl.f read_denzo_mtx.f			\
  read_matrix_ctl.f read_mosflm_mtx.f read_par_file.f reset_cell.f	\
  rg_exists.f rot_hists.f rot_ranges.f rot_ranges_nopad.f		\
  rot_sims.f rot_start.f rotgen.f save_start_cell.f screen_setup.f	\
  sel_anal.f sel_func.f sel_mtz.f sel_strategy.f set_meas_flags.f	\
  set_menu1.f set_par_nam.f set_par_vals.f strat_disp_results.f		\
  strat_exam_menu.f strat_log_addseg.f strat_log_mult.f			\
  strat_log_results.f strategy_calc.f strategy_calc2.f			\
  strategy_calc2_acp.f strategy_calc_acp.f strategy_cntl.f		\
  strategy_examine.f sym_chk.f symm_errchk.f unique_gen.f vangl.f	\
  write_matrix_ctl.f cell_input.finc mtz_data.finc resol_stats.finc	\
  choose_soln.finc orient.finc strategy.finc current_set.finc		\
  ovlp_stats.finc unique.finc file_units.finc predict_all.finc		\
  update.finc font.finc prediction_params.finc version.finc		\
  ip_entries.finc prog_flags.finc view_handles.finc limits.finc		\
  quick.finc winpars.finc

rotgen_LDADD =					\
	../libjwc/libjwc_f/libjwc_f.la		\
	../libjwc/libjwc_c/libjwc_c.la		\
	../xdl_view/src/libxdl_view.la		\
	../xdl_view/src/libxdl_viewextra.la	\
	../../lib/src/libccp4c.la		\
	../../lib/src/libccp4f.la		\
	../../lib/ccif/libccif.la

EXTRA_DIST = doc/rg_app1.html doc/rg_app2.html doc/rg_app3.html		\
  doc/rg_app4.html doc/rg_app5.html doc/rg_axes.gif doc/rg_chap1.html	\
  doc/rg_chap2.html doc/rg_chap3.html doc/rg_chap4.html			\
  doc/rg_chap5.html doc/rg_chap6.html doc/rg_p1.gif doc/rg_p2.gif	\
  doc/rg_p3.gif doc/rg_p4.gif doc/rg_p5.gif doc/rg_p6.gif doc/rg_p7.gif	\
  doc/rg_p8.gif doc/rg_p9.gif doc/rg_poster.html doc/rg_poster1.gif	\
  doc/rg_poster2.gif doc/rg_poster3.gif doc/rg_poster4.gif		\
  doc/rg_poster5.gif doc/rg_poster6.gif doc/rg_poster7.gif		\
  doc/rg_poster8.gif doc/rg_poster9.gif doc/rg_rl.gif			\
  doc/rg_rl_noanom.gif doc/rg_screen.gif doc/rg_sim_bw.gif		\
  doc/rg_sim_colr.gif doc/rg_strat.gif doc/rg_top.gif			\
  doc/rg_top_source.html doc/rg_unq_graph.gif doc/rg_updates.html	\
  doc/rotgen_icon.gif

####

