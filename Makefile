
CFLAGS=-Wall -g -O6 -std=c99
SUBDIRS=runtime lang_ext utilities
TARGETS=all clean

.PHONY: $(TARGETS)
$(TARGETS):
	@for dir in $(SUBDIRS) ; do make -w -C $$dir $@; done
