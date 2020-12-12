AS=ca65
CC=cl65
CFLAGS=-ttelestrat
ASFLAGS=-ttelestrat
LDFILES=

all : init sha1
.PHONY : all

HOMEDIR=/home/travis/bin/


SOURCE=src/main.c src/sha1.c

PROGRAM_NAME=sha1

MYDATE = $(shell date +"%Y-%m-%d %H:%m")

ifdef TRAVIS_BRANCH
ifeq ($(TRAVIS_BRANCH), master)
RELEASE:=$(shell cat VERSION)
else
RELEASE:=alpha
endif
endif


PATH_PACKAGE_ROM=build/usr/share/$(PROGRAM_NAME)/
RELEASE_PATH=release/
init:
	@mkdir -p build/usr/share/ipkg/
	@mkdir -p build/usr/share/man/  
	@mkdir -p build/bin/ 
	@mkdir -p build/usr/share/doc/$(PROGRAM_NAME)/
  
sha1: $(SOURCE)
	@date +'.define __DATE__ "%F %R"' > src/build.inc
	@cl65 -ttelestrat $(SOURCE) -o build/bin/$(PROGRAM_NAME)
	
test:
	echo Release : $(RELEASE)

  
  
