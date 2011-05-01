# Makefile for www.davespace.co.uk
# $Id$

DESTDIR	 = .

.SUFFIXES:	# Delete the default suffixes
.SUFFIXES: .less .css

.PHONY:	all clean

SOURCES	= $(wildcard *.less)
OBJECTS = $(SOURCES:.less=.css)

all:	$(OBJECTS)

.less.css:;	lessc $< $(DESTDIR)/$@

clean:;	-rm -f $(OBJECTS)

