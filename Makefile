# Written by Eric Crosson
# 2017-05-22
#
# This makefile provides targets to test captain-hook.

tests := $(wildcard test/*.sh)

.PHONY: test

test: $(tests)
	@for t in $(tests); do \
		./test/libs/bats/bin/bats $${t}; \
	done
