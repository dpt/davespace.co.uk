# Makefile for www.davespace.co.uk/python/
# $Id$

DESTDIR	   = .
IGNORE	   = IGN="21|87"
STDINC	   = ../macros/site.hsc macros/section.hsc macros/group.hsc
HSCMISC	   = PREFSFILE=../hsc.prefs MAXMSG=0 MAXERR=0 XHTML COMPACT GETSIZE

HSCFLAGS   = $(HSCMISC) $(IGNORE) $(STDINC)
HSC	   = hsc

.SUFFIXES:	# Delete the default suffixes
.SUFFIXES: .hsc .html

.PHONY:	all clean subs

SOURCES	= $(wildcard *.hsc)
OBJECTS = $(SOURCES:.hsc=.html)

# Remember that the stylesheet isn't a build time dependency.
all:	$(OBJECTS)

# Objects depend on any macros or scripts changing.
$(OBJECTS):	$(STDINC)

.hsc.html:;	$(HSC) $(HSCFLAGS) TO=$(DESTDIR)/$@ $<

clean:;	-rm -f $(OBJECTS) $(SCRATCH)

