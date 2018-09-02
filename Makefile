## [M1: point 1]
#  Explain following in here
#  ...
CUR_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

## [M2: point 1]
#  Explain following in here
#  ...
CC = gcc
CFLAGS += -g -O2 -Werror -Wall
LDFLAGS +=

## [M3: point 1]
#  Explain following in here
#  ...
DEPS_DIR  := $(CUR_DIR)/.deps$(LIB_SUFFIX)
DEPCFLAGS = -MD -MF $(DEPS_DIR)/$*.d -MP

## [M5: point 1]
#  Explain following in here
#  ...
SRC_FILES = $(wildcard *.c)

## [M6: point 1]
#  Explain following in here
#  ...
EXE_FILES = $(SRC_FILES:.c=)

## [M7: point 1]
#  Explain following in here
#  ...
all: $(EXE_FILES)
	echo $(EXE_FILES)

## [M8: point 1]
#  Explain following in here
#  ...
%/%.c:%.c $(DEPS_DIR)
	$(CC) $(CFLAGS) $(DEPCFLAGS) -c $@ $<

## [M9: point 1]
#  Explain following in here
#  ...
clean:
	rm -f $(EXE_FILES)

## [M10: point 1]
#  Explain following in here
#  ...
.PHONY: all clean
