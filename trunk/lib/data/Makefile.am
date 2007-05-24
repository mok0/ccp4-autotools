## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/24 14:14:13 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

LIBS=

datadirs = fraglib monomers reference_structures

pkgdata_DATA = angldat.prt atomsf.lib atomsf_neutron.lib chiral_pep4.dic    \
chiral_pep5.dic cif_mm.dic crossec.lib crunch_asc.lib dna.dic font84.ascii  \
hist.lib mosflm.dat nochiral_pep4.dic nochiral_pep5.dic pmf_asc.lib	    \
protin.dic protin_jp.doc protin_jp.idl protin_vl.doc protin_vl.idl	    \
ps.resource ps_resource.lib random_seed.lib README sc_radii.lib SEARCH.PARM \
stdgps.york syminfo.lib symop.lib symop_old.lib TOP.PARM zninsl.hist

install-data-local:
	for d in $(datadirs) ; do cp -a $$d $(DESTDIR)$(pkgdatadir) ; done
####

