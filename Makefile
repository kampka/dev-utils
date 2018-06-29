.PHONY: install nixify all

DEST_DIR ?=
PREFIX ?= /usr/local

all:
	@echo "Nothing to be done for target 'all'. To install, use 'make install'"

nixify:
	install -D -m755 bin/nixify $(DEST_DIR)$(PREFIX)/bin/nixify
	cp -r share $(DEST_DIR)$(PREFIX)/share
	chmod -R 755 $(DEST_DIR)$(PREFIX)/

install: nixify
