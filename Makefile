# Makefile for www.davespace.co.uk
# $Id$

DESTDIR	 = .
IGNORE	 = IGN="21|87"
STDINC	 = macros/site.hsc macros/section.hsc macros/group.hsc
HSCMISC	 = PREFSFILE=hsc.prefs MAXMSG=0 MAXERR=0 XHTML COMPACT GETSIZE

HSCFLAGS = $(HSCMISC) $(IGNORE) $(STDINC)
HSC      = hsc

.SUFFIXES:	# Delete the default suffixes
.SUFFIXES: .hsc .html

.PHONY:	all clean subs

SOURCES	= $(wildcard *.hsc)
OBJECTS = $(SOURCES:.hsc=.html)

# Remember that the stylesheet isn't a build time dependency.
all:	$(OBJECTS) subs

# Objects depend on any macros or scripts changing.
$(OBJECTS):	$(STDINC) $(SCRIPTS)

.hsc.html:;	$(HSC) $(HSCFLAGS) TO=$(DESTDIR)/$@ $<

subs:;	make -C arm
	make -C risc.os
	make -C python

#subs:;	make -C risc.os

clean:;	rm -f $(OBJECTS) $(SCRATCH)
	make -C arm clean
	make -C risc.os clean
	make -C python clean

