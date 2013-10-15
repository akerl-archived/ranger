#!/usr/bin/env make

install: install_submodules install_gems

install_submodules:
	git submodule init
	git submodule update

install_gems:
	bundle install

