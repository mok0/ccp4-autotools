## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/24 13:25:47 mok Exp $
## Author: mok@ghost.bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

psdir = $(datadir)/ccp4/ps
ps_DATA = ccifdoc.ps sfcheckdoc.ps

textdir = $(datadir)/ccp4/text
text_DATA = ccp4.faq molrepdoc.rtf

# cpirate freerunique loggraphformat -- zero size files.
# rasmol -- may be already be installed 
# ribbon -- also in raster3d

manpages = abs acorn act almn alternate_origins amore angles anisoanl	    \
areaimol arp_waters AstexViewer axissearch baverage beast binsort bones2pdb \
bp3 bplot bulk cad cavenv cciflib ccp4 ccp4i ccp4mapwish ccplib chainsaw    \
cheshirecell chltofom cif2mtz cif2xml clustalw combat compar contact	    \
coordconv coord_format crank crossec cross_validate derivatives detwin	    \
dhm_tool diffarea difres diskio distang dm dmmulti dm_ncs_averaging	    \
dm_skeletonisation dna_output dtrek2mtz dtrek2scala dyndom ecalc extends    \
f2mtz fffear fffear_fraglib ffjoin fft fhscal findncs freerflag fsearch	    \
gensym geomcalc getax get_prot harvesting harvlib havecs hbond helixang	    \
hgen hklplot hklview icoefl intro_mon_lib ipdisp joy_of_skewing keyparse    \
libcheck libdiskio libfft libhtml lib_list libparser library loggraph	    \
lsqkab makedict mama2ccp4 map2fs mapdump mapexchange maplib mapmask	    \
mapreplace maprot mapsig mapslicer maptona4 matthews_coef mlphare	    \
mmcifformat modlib molrep mon_lib mosflm mtz2various mtzdump mtzformat	    \
mtzlib mtzMADmod mtzmnf mtztona4 mtzutils ncont ncsmask npo oasis omit	    \
oscgen overlapmap p842asc parser patch_ccp4 pdbcur pdb_extract-CCP4	    \
pdb_extract pdbextract pdbformat pdb_merge pdbset peakmax phaser phistats   \
plot84 pltdev polarrfn polypose postref procheck professs pxxml rantan	    \
rdent rebatch refindex refmac5 reforigin reindex reindexing resarea	    \
restrain revise rfcorr rotamer rotamer_table rotaprep rotgen rotmat  \
rsearch rsps rstats rwbrook rwcontents sapi scala scalechoose scaleit	    \
scalepack2mtz sc sfall sfcheck sftools sigmaa sketcher skew skew_rev	    \
solomon sortmtz sortwater standards stereo stgrid stnet superpose surface   \
symfit symlib symmetry tffc tlsanl tlsextract topdraw topp tracer truncate  \
twinning unique unix vecref vecsum vectors volume waterarea watertidy	    \
watncs watpeak wilson wilson xdldataman xdlmapman xdl_view xloggraph	    \
xplot84driver zeroed

CLEANFILES =*.1

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(mandir)/man1; \
	for f in $(manpages) ; do \
	perl ./doc2man.pl <$$f.doc|sed -r -e 's/<[a-z0-9]+>/\\fI&\\fR/g'> $$f.1; \
	 install -m644 $$f.1 $(DESTDIR)$(mandir)/man1 ; done
####
