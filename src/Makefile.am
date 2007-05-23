## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 12:58:40 mok Exp $
## Author: mok@bioxray.dk
## License: GPL

# Build in these directories
SUBDIRS = 

#Distribute these directories:
DIST_SUBDIRS = $(SUBDIRS)

LIBS=-lmmdb

# Some of the directories have multiple programs in them. They 
# are defined here:
arp_warp = arp_waters prepform prepshel t_shift
procheck = anglen proclean gfac2pdb mplot nb pplot rmsdev \
	secstr tplot probplot
crank_app =  generate_xml_datasetinfo_from_mtz mtzcat
dev_tools = mtzdiff mapdiff pdbdiff
mmdb_app = chainsaw coord_format ncont pdbcur pdb_merge
refmac5 = refmac5 libcheck
restrain = restrain rdent tlsextract tlsanl 
topp = topp toplist pdbhtf

bin_PROGRAMS = abs acorn act almn amore anisoanl areaimol baverage	    \
bones2pdb bplot bulking cad cavenv cif2mtz contact coordconv crossec detwin \
distang dtrek2mtz ecalc f2mtz ffjoin fft fhscal findncs freerflag fsearch   \
gensym geomcalc getax hgen hklplot icoefl lsqkab makedict mama2ccp4 map2fs  \
mapdump mapsig maptona4 matthews_coef mlphare mtz2various mtzdump mtzMADmod \
mtzmnf mtztona4 mtzutils na4tomtz npo oasis omit overlapmap pdbset peakmax  \
phistats polarrfn polypose prep_bulk professs rantan rebatch reindex revise \
rfcorr rotamer rotmat rsearch rstats rwcontents sapi scaleit scalepack2mtz  \
sfall sigmaa sortmtz sortwater stgrid stnet surface tffc tracer truncate    \
unique vecref vectors volume watertidy watncs watpeak wilson $(arp_warp)    \
beast bp3 ccp4mapwish combat $(crank_app) $(dev_tools) dm dmmulti	    \
dtrek2scala dyndom fffear mapmask maprot $(mmdb_app) molrep ncsmask	    \
$(procheck) $(refmac5) $(restrain) rsps sc scala sfcheck sftools solomon    \
stereo $(topp)

LDADD = ../lib/src/libccp4c.la ../lib/src/libccp4f.la ../lib/ccif/libccif.la

abs_SOURCES = abs.f
acorn_SOURCES = acorn.f
act_SOURCES = act.f
almn_SOURCES = almn.f
amore_SOURCES = amore.f
anisoanl_SOURCES = anisoanl.f
areaimol_SOURCES = areaimol.f
baverage_SOURCES = baverage.f
bones2pdb_SOURCES = bones2pdb.f
bplot_SOURCES = bplot.f
bulking_SOURCES = bulking.f
cad_SOURCES = cad.f
cavenv_SOURCES = cavenv.f
cif2mtz_SOURCES = cif2mtz.f
contact_SOURCES = contact.f
coordconv_SOURCES = coordconv.f
crossec_SOURCES = crossec.f
detwin_SOURCES = detwin.f
distang_SOURCES = distang.f
dtrek2mtz_SOURCES = dtrek2mtz.f
ecalc_SOURCES = ecalc.f
f2mtz_SOURCES = f2mtz.f
ffjoin_SOURCES = ffjoin.f
fft_SOURCES = fft.f
fhscal_SOURCES = fhscal.f
findncs_SOURCES = findncs.f
freerflag_SOURCES = freerflag.f
fsearch_SOURCES = fsearch.f
#fsearch_mpi_SOURCES = fsearch_mpi.f
gensym_SOURCES = gensym.f
geomcalc_SOURCES = geomcalc.f
getax_SOURCES = getax.f
hgen_SOURCES = hgen.f
hklplot_SOURCES = hklplot.f
icoefl_SOURCES = icoefl.f
lsqkab_SOURCES = lsqkab.f
makedict_SOURCES = makedict.f
mama2ccp4_SOURCES = mama2ccp4.f
map2fs_SOURCES = map2fs.f
mapdump_SOURCES = mapdump.f
mapsig_SOURCES = mapsig.f
maptona4_SOURCES = maptona4.f
matthews_coef_SOURCES = matthews_coef.f
mlphare_SOURCES = mlphare.f
mtz2various_SOURCES = mtz2various.f
mtzdump_SOURCES = mtzdump.f
mtzMADmod_SOURCES = mtzMADmod.f
mtzmnf_SOURCES = mtzmnf.f
mtztona4_SOURCES = mtztona4.f
mtzutils_SOURCES = mtzutils.f
na4tomtz_SOURCES = na4tomtz.f
npo_SOURCES = npo.f
oasis_SOURCES = oasis.f
omit_SOURCES = omit.f
overlapmap_SOURCES = overlapmap.f
pdbset_SOURCES = pdbset.f
peakmax_SOURCES = peakmax.f
phistats_SOURCES = phistats.f
polarrfn_SOURCES = polarrfn.f
polypose_SOURCES = polypose.f
prep_bulk_SOURCES = prep_bulk.f
professs_SOURCES = professs.f
rantan_SOURCES = rantan.f
rebatch_SOURCES = rebatch.f
reindex_SOURCES = reindex.f
revise_SOURCES = revise.f
rfcorr_SOURCES = rfcorr.f
rotamer_SOURCES = rotamer.f
rotmat_SOURCES = rotmat.f
rsearch_SOURCES = rsearch.f
rstats_SOURCES = rstats.f
rwcontents_SOURCES = rwcontents.f
sapi_SOURCES = sapi.f
scaleit_SOURCES = scaleit.f
scalepack2mtz_SOURCES = scalepack2mtz.f
sfall_SOURCES = sfall.f
sigmaa_SOURCES = sigmaa.f
sortmtz_SOURCES = sortmtz.f
sortwater_SOURCES = sortwater.f
stgrid_SOURCES = stgrid.f
stnet_SOURCES = stnet.f
surface_SOURCES = surface.f
tffc_SOURCES = tffc.f
tracer_SOURCES = tracer.f
truncate_SOURCES = truncate.f
unique_SOURCES = unique.f
vecref_SOURCES = vecref.f
vectors_SOURCES = vectors.f
volume_SOURCES = volume.f
watertidy_SOURCES = watertidy.f
watncs_SOURCES = watncs.f
watpeak_SOURCES = watpeak.f
wilson_SOURCES = wilson.f

# Now compile the programs in subdirs

arp_waters_SOURCES = arp_warp_/arp_waters.f 
prepform_SOURCES = arp_warp_/prepform.f 
prepshel_SOURCES = arp_warp_/prepshel.f 
t_shift_SOURCES = arp_warp_/t_shift.f

beast_SOURCES = beast_/beast.f beast_/kdfftsf.f
beast_FFLAGS = -I./beast_
beast_LDFLAGS = -llapack
#beast_SOURCES = beast_/beast.f beast_/beast_MPI/beast_MPI.f beast_/beast_MPI/kdfftsf.f beast_/kdfftsf.f
#beast_FFLAGS = -I./beast_

bp3_SOURCES = bp3_/bp3input.C bp3_/gauss.C bp3_/model.C bp3_/minimizer.C \
	bp3_/bp3main.C bp3_/crystal.C bp3_/likelihood.C bp3_/sad.C	 \
	bp3_/bp3misc.C bp3_/mir.C bp3_/sfdata.C
bp3_CXXFLAGS = -I./bp3_ -I../lib/src
bp3_LDFLAGS = -llapack

ccp4mapwish_SOURCES = ccp4mapwish_/c_src/c_contour.c	\
	ccp4mapwish_/c_src/ccp4mapwish_canvas.c		\
	ccp4mapwish_/c_src/ccp4mapwish_contour.c	\
	ccp4mapwish_/c_src/ccp4mapwish_init.c		\
	ccp4mapwish_/c_src/ccp4mapwish_main.c		\
	ccp4mapwish_/c_src/ccp4mapwish_map.c		\
	ccp4mapwish_/c_src/ccp4mapwish_section.c	\
	ccp4mapwish_/c_src/ccp4mapwish_tcl.c		\
	ccp4mapwish_/c_src/ccp4mapwish_utils.c

ccp4mapwish_CFLAGS = -I../lib/src -I./ccp4mapwish_ -I/usr/include/tcl8.4 \
-I/usr/include/tk8.4
ccp4mapwish_LDFLAGS = -ltcl8.4 -ltk8.4

# XXX Need to configure tcl from autoconf!!!

combat_SOURCES = combat_/combat.f
combat_FFLAGS = -I./combat_

generate_xml_datasetinfo_from_mtz_SOURCES = \
	crank_app_/generate_xml_datasetinfo_from_mtz.c
generate_xml_datasetinfo_from_mtz_CFLAGS = \
	-I./crank_app_ -I../lib/src

mtzcat_SOURCES = crank_app_/mtzcat.c
mtzcat_CFLAGS = -I./crank_app_ -I../lib/src

mtzdiff_SOURCES = dev_tools_/mtzdiff.c
mtzdiff_CFLAGS = -I./dev_tools_ -I../lib/src

mapdiff_SOURCES = dev_tools_/mapdiff.c
mapdiff_CFLAGS = -I./dev_tools_ -I../lib/src

pdbdiff_SOURCES = dev_tools_/pdbdiff.cpp
pdbdiff_CXXFLAGS = -I./dev_tools_ -I../lib/src -I/usr/include/mmdb
pdbdiff_LDFLAGS = -lmmdb
# XXX configure mmdb

dm_SOURCES = dm_/denmod.f dm_/dmaver.f dm_/dmharvest.f dm_/dmlib.f	   \
	dm_/dmmain.f dm_/fftkdc.f dm_/freemask.f dm_/gamma.f dm_/maptree.f \
	dm_/mathkdc.f dm_/ncsautomask.f dm_/phcomb.f dm_/xtlkdc.f
dm_FFLAGS = -I./dm_

dmmulti_SOURCES = dmmulti_/dmmulti.f dmmulti_/dmmulti_denmod.f	\
	dmmulti_/dmmulti_dmaver.f dmmulti_/dmmulti_dmlib.f	\
	dmmulti_/dmmulti_fftkdc.f dmmulti_/dmmulti_maptree.f	\
	dmmulti_/dmmulti_mathkdc.f dmmulti_/dmmulti_phcomb.f	\
	dmmulti_/dmmulti_xtlkdc.f
dmmulti_FFLAGS = -I./dmmulti_

dtrek2scala_SOURCES = dtrek2scala_/abblk.f dtrek2scala_/bemvec.f		\
	dtrek2scala_/bmatrx.f dtrek2scala_/camatc.f dtrek2scala_/chkhdkey.f	\
	dtrek2scala_/clcalc.f dtrek2scala_/clsopf.f dtrek2scala_/dcosfd.f	\
	dtrek2scala_/dtrek2scala.f dtrek2scala_/getreu.f dtrek2scala_/gn3cmp.f	\
	dtrek2scala_/hdropf.f dtrek2scala_/inihdr.f dtrek2scala_/mfsd.f		\
	dtrek2scala_/mkbmat.f dtrek2scala_/mkordtr.f dtrek2scala_/mktrdtr.f	\
	dtrek2scala_/moveit.f dtrek2scala_/open_file.f dtrek2scala_/opndtr.f	\
	dtrek2scala_/ordr3.f dtrek2scala_/outhdr.f dtrek2scala_/plabsn.f	\
	dtrek2scala_/prcdtr.f dtrek2scala_/prtgrp.f dtrek2scala_/rdrefl.f	\
	dtrek2scala_/readhd.f dtrek2scala_/redtre.f dtrek2scala_/rotmat.f	\
	dtrek2scala_/rtmats.f dtrek2scala_/sinv.f dtrek2scala_/umatcl.f		\
	dtrek2scala_/vnorm.f dtrek2scala_/wrmatx.f dtrek2scala_/zeroia.f	\
	dtrek2scala_/zerora.f dtrek2scala_/zerorm.f
dtrek2scala_FFLAGS = -I./dtrek2scala_

dyndom_SOURCES = dyndom_/dyndom.f
dyndom_FFLAGS = -I./dyndom_

fffear_SOURCES = fffear_/fffear.f fffear_/fffear_dmlib.f				\
	fffear_/fffear_fftkdc.f fffear_/fffear_mathkdc.f fffear_/fffear_xtlkdc.f	\
	fffear_/filter.f fffear_/searcher.f fffear_/srchfft.f
fffear_FFLAGS = -I./fffear_

mapmask_SOURCES = mapmask_/mapmask.f
mapmask_FFLAGS = -I./mapmask_

maprot_SOURCES = maprot_/maprot.f
maprot_FFLAGS = -I./maprot_

### mmdb_apps_ ####

chainsaw_SOURCES = mmdb_app_/chainsaw.cpp
chainsaw_CXXFLAGS = -I./mmdb_app_ -I/usr/include/mmdb -I../lib/src

coord_format_SOURCES = mmdb_app_/coord_format.cpp	
coord_format_CXXFLAGS = -I./mmdb_app_ -I/usr/include/mmdb -I../lib/src

ncont_SOURCES = mmdb_app_/ncont.cpp
ncont_CXXFLAGS = -I./mmdb_app_ -I/usr/include/mmdb -I../lib/src

pdbcur_SOURCES = mmdb_app_/pcur_funcs.cpp mmdb_app_/pdbcur.cpp
pdbcur_CXXFLAGS = -I./mmdb_app_ -I/usr/include/mmdb -I../lib/src

pdb_merge_SOURCES = mmdb_app_/pdb_merge.cpp
pdb_merge_CXXFLAGS = -I./mmdb_app_ -I/usr/include/mmdb -I../lib/src


molrep_SOURCES = molrep_/main_molrep_mtz.f molrep_/molrep.f				\
	molrep_/molrep1.f molrep_/molrep2.f molrep_/molrep3.f molrep_/molrep_prog.f	\
	molrep_/molrep_prog1.f molrep_/molrep_prog2.f molrep_/molrep_subr.f		\
	molrep_/molrep_sym_ccp4.f molrep_/molrep_unix_ccp4.f
molrep_FFLAGS = -I./molrep_

ncsmask_SOURCES = ncsmask_/ncsmask.f
ncsmask_FFLAGS = -I./ncsmask_

#### procheck sources ####
anglen_SOURCES = procheck/anglen.f 
anglen_FFLAGS = -I./procheck

probplot_SOURCES = procheck/bplot.f procheck/ps.f
probplot_FFLAGS = -I./procheck 
probplot_LDFLAGS =

proclean_SOURCES = procheck/clean.f
proclean_FFLAGS = -I./procheck

gfac2pdb_SOURCES = procheck/gfac2pdb.f procheck/ps.f 
gfac2pdb_FFLAGS = -I./procheck

mplot_SOURCES = procheck/mplot.f procheck/ps.f 
mplot_FFLAGS = -I./procheck

nb_SOURCES = procheck/nb.c	
nb_FFLAGS = -I./procheck

pplot_SOURCES = procheck/pplot.f procheck/ps.f 
pplot_FFLAGS = -I./procheck

rmsdev_SOURCES = procheck/rmsdev.f 
rmsdev_FFLAGS = -I./procheck

secstr_SOURCES = procheck/secstr.f
secstr_FFLAGS = -I./procheck

tplot_SOURCES = procheck/tplot.f procheck/ps.f 
tplot_FFLAGS = -I./procheck

#### procheck end ####
refmac_common = refmac5_/make_subr.f		\
	refmac5_/make_lib.f			\
	refmac5_/make_new.f			\
	refmac5_/make_crd.f			\
	refmac5_/make_CIF.f			\
	refmac5_/make_PDB.f 


refmac5_SOURCES = refmac5_/refmac_newdic.f	\
	refmac5_/solvent_contr_mask.f		\
	refmac5_/hkon_secder_tch.f		\
	refmac5_/fast_hessian_tabulation.f	\
	refmac5_/subvag.f			\
	refmac5_/lsq_symm_atoms.f		\
	refmac5_/oppro_tor1.f			\
	refmac5_/rcard_tor1.f			\
	refmac5_/subcf_scale1.f			\
	refmac5_/ncs_const.f			\
	refmac5_/subag_scale_hessian.f		\
	refmac5_/extra_eigen.f			\
	refmac5_/rigid_body_newdic.f		\
	refmac5_/aniso_ref_eigen.f		\
	refmac5_/linalgebra.f			\
	refmac5_/make_subr_refmac.f		\
	refmac5_/tls_newdic_non.f		\
	refmac5_/vdw_symmetry.f			\
	refmac5_/make_rst.f			\
	refmac5_/makecif.f			\
	refmac5_/make_refmac_dummy.f		\
	refmac5_/ls_scaling_double.f		\
	refmac5_/interpolate_mod.f		\
	refmac5_/rharvest.f			\
	refmac5_/newentry_idealise.f		\
	refmac5_/ml_scaling_double.f		\
	refmac5_/gaussian_int.f			\
	refmac5_/subnumrec.f			\
	$(refmac_common)

refmac5_FFLAGS = -I./refmac5_ -I../lib/src 
refmac5_LDFLAGS = -lmmdb

libcheck_SOURCES =				\
	refmac5_/main_libcheck.f		\
	refmac5_/make_subr_2.f			\
	refmac5_/libcheck.f			\
	refmac5_/emin.f				\
	refmac5_/make_unix_ccp4.f		\
	refmac5_/libcheck_min.f	    \
	$(refmac_common)
libcheck_FFLAGS = -I./refmac5_

### restrain ###
restrain_SOURCES = restrain_/restrain.f	
restrain_FFLAGS = -I./restrain_ 

rdent_SOURCES = restrain_/rdent.f 
rdent_FFLAGS = -I./restrain_ 

tlsanl_SOURCES = restrain_/tlsanl.f 
tlsanl_FFLAGS = -I./restrain_ 

tlsextract_SOURCES = restrain_/tlsextract.c
tlsextract_CFLAGS = -I./restrain_  -I../lib/src 
### 

rsps_SOURCES = rsps_/errlib.f rsps_/forlib.f rsps_/hlptxt.f rsps_/rsps.f	\
rsps_/veclib.f
rsps_FFLAGS = -I./rsps_

sc_SOURCES = sc_/sc.f
sc_FFLAGS = -I./sc_

scala_SOURCES = scala_/scala.f
scala_FFLAGS = -I./scala_
scala_LDFLAGS = -llapack # XXX configure

sfcheck_SOURCES =				\
	sfcheck_/main_sfcheck_ccp4.f		\
	sfcheck_/sfch_graph_1.f			\
	sfcheck_/sfch_graph_2.f			\
	sfcheck_/sfch_graph_3.f			\
	sfcheck_/sfch_graph_4.f			\
	sfcheck_/sfch_graph_5.f			\
	sfcheck_/sfch_prog.f			\
	sfcheck_/sfch_subr.f			\
	sfcheck_/sfch_sym_ccp4.f		\
	sfcheck_/sfch_unix_ccp4.f		\
	sfcheck_/sfcheck.f
sfcheck_FFLAGS = -I./sfcheck_

sftools_SOURCES = sftools_/sftools.f
sftools_FFLAGS = -I./sftools_

solomon_SOURCES = solomon_/cmap_calc.c solomon_/cmap_io.c	\
	solomon_/cmsk_io.c solomon_/matrix.c solomon_/solomon.c
solomon_FFLAGS = -I./solomon_

stereo_SOURCES = stereo_/astereo.f stereo_/central.f stereo_/helix.f	\
	stereo_/lineq1.f stereo_/refine.f
stereo_FFLAGS = -I./stereo_


#### topp ####

topp_SOURCES = topp_/topp.f topp_/autosnd.f 
topp_FFLAGS = -I./topp_

toplist_SOURCES = topp_/toplist.f

pdbhtf_SOURCES = topp_/pdbhtf.c 

#####
