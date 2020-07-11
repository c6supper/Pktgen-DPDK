# SPDX-License-Identifier: BSD-3-Clause
# Copyright(c) 2019-2020 Intel Corporation

#
# Head Makefile for compiling Pktgen-DPDK, but just a wrapper around
# meson and ninja using the tools/pktgen-build.sh script.
#
# Use 'make' or 'make build' to build Pktgen-DPDK. If the build directory does
# not exist it will be created with these two build types.
#

Build=./tools/pktgen-build.sh

build: FORCE
	${Build} build

rebuild: FORCE
	${Build} clean build

buildgui: FORCE
	${Build} buildgui

rebuildgui: FORCE
	${Build} clean buildgui

debug: FORCE
	${Build} debug

debugopt: FORCE
	${Build} debugopt

clean: FORCE
	${Build} clean

dist-clean: FORCE
	${Build} dist-clean

install: FORCE
	${Build} install

docs: FORCE
	${Build} docs

doc: FORCE
	${Build} docs

help: FORCE
	${Build} help

FORCE:
	@echo ">>> Use 'make help' for more commands\n"
