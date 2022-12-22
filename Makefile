# Makefile for jackpatch

lib.name = jackpatch

class.sources = jackpatch.c

ldlibs = -ljack

datafiles = \
    jackpatch-help.pd \
    jackpatch-meta.pd \
    LICENSE.txt \
    README.md


# This Makefile is based on the Makefile from pd-lib-builder written by
# Katja Vetter. You can get it from:
# https://github.com/pure-data/pd-lib-builder

PDLIBBUILDER_DIR=pd-lib-builder/
include $(firstword $(wildcard $(PDLIBBUILDER_DIR)/Makefile.pdlibbuilder Makefile.pdlibbuilder))

localdep_linux: install
	scripts/localdeps.linux.sh -d "${installpath}/jackpatch.${extension}"

localdep_macos: install
	scripts/localdeps.macos.sh -d -s "${installpath}/jackpatch.${extension}"

localdep_windows: install
	scripts/localdeps.win.sh "${installpath}/jackpatch.${extension}"
