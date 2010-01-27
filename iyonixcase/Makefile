# Makefile for ...
# $Id$

DESTDIR	= .
IGNORE	= IGN="21|87"
STDINC	= ../arm/inc/macros.hsc
HSCMISC	= PREFSFILE=../arm/hsc.prefs MAXMSG=0 MAXERR=0 XHTML COMPACT

HSCFLAGS= $(HSCMISC) $(IGNORE) $(STDINC)
HSC     = hsc.exe

.SUFFIXES:	# Delete the default suffixes
.SUFFIXES: .hsc .html

.PHONY:	all clean

SOURCES	= $(wildcard *.hsc)
OBJECTS = $(SOURCES:.hsc=.html)

# Remember that the stylesheet isn't a build time dependency.
all:	$(OBJECTS)

# Objects depend on any macros changing.
$(OBJECTS):	$(STDINC)

.hsc.html:;	$(HSC) $(HSCFLAGS) TO=$(DESTDIR)/$@ $<

clean:;	rm -f $(OBJECTS)

