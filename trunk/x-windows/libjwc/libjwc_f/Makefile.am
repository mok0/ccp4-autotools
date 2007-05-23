libjwc_f_la_SOURCES = kwd_chk_parsekdm.f kwd_chk_parsesymm.f		 \
  kwd_opfun.f kwd_parseitem.f kwd_parsekdm.f kwd_parsesymm.f		 \
  kwd_readline.f kwd_readstr.f kwd_writekdm.f kwd_writekdm_symm.f	 \
  rpf_dstar.f rpf_dstar_quick.f rpf_fracs.f rpf_isw.f rpf_lim.f		 \
  rpf_lps.f rpf_predict.f rpf_qd2.f rpf_reccel.f rpf_rsw.f rpf_rtm.f	 \
  rpf_rtod.f rpf_set_bmatrix.f rpf_set_mosdet.f rpf_setax.f		 \
  rpf_unq_gen.f rpf_unq_lims.f ksm_data.finc kwd_outstring.finc		 \
  ksm_set_symm.f ksm_reset.f ksm_ch_reset.f ksm_symm_changed.f		 \
  ksm_get_symm.f ksm_get_spgrp.f ksm_get_nsym.f ksm_get_sylat.f		 \
  ksm_sysabs.f ksm_sysahk.f ksm_symm_list.f ksm_writesymm.f ksm_asuset.f \
  ksm_centric.f ksm_sym_lirl.f ksm_read_symm.f ksm_symfr2.f		 \
  ksm_symm_str.f ksm_intfp.f ksm_bdat.f cellcx.f getopt.f isum.f	 \
  reccel.f str_adds.f idxrnk.f lminls.f scr_log.f strtkn.f filext.f	 \
  indxiv.f lsqmin.f ssqmin.f strval.f flpval.f indxrv.f nxttok.f	 \
  str_addf.f sum.f fncalc.f invmat.f opn_scr.f str_addi.f trwset.f	 \
  tlog.f twrite.f tstrng.f tpromp.f taskq.f taskf.f taski.f tread.f

lib_LTLIBRARIES = libjwc_f.la
libjwc_f_la_LDFLAGS = -version-info 1:1:1

# Dependencies:  -M doesn't work with g77 :-(
kwd_writekdm_symm.f kwd_writekdm.f: kwd_outstring.finc

EXTRA_DIST = doc/ksm.html doc/kwd.html doc/rpf.html
