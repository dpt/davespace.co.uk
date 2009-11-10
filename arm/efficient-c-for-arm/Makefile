# Makefile for Efficient C for ARM
# $Id$

#DESTDIR	= docs
DESTDIR	= .
RELEASEDIR = release
#RELEASEDIR = ..
IGNORE	= IGN="21|87"
STDINC	= ../inc/macros.hsc inc/macros.hsc
SCRIPTS = ../armsyntaxcolour.pl ../csyntaxcolour.pl
HSCMISC	= PREFSFILE=hsc.prefs MAXMSG=0 MAXERR=0 XHTML COMPACT

HSCFLAGS= $(HSCMISC) $(IGNORE) $(STDINC)
HSC     = hsc

#HSCDEPP	= hscdepp
#HSCPITT	= hscpitt

.SUFFIXES:	# Delete the default suffixes
.SUFFIXES: .hsc .html

.PHONY:	all clean

SOURCES	= $(wildcard *.hsc)
#SOURCES	= why-learn.hsc not-trivial.hsc
OBJECTS = $(SOURCES:.hsc=.html)
SCRATCH = perlinput *.tmp

# Remember that the stylesheet isn't a build time dependency.
all:	$(OBJECTS)

# Objects depend on any macros or scripts changing.
$(OBJECTS):	$(STDINC) $(SCRIPTS)

.hsc.html:;	$(HSC) $(HSCFLAGS) TO=$(DESTDIR)/$@ $<

release:
	rm -rf $(RELEASEDIR)
	make all
	mkdir $(RELEASEDIR)
	cp -R img *.html styles.css $(RELEASEDIR)
	find $(RELEASEDIR) \( -name "Thumbs.db" -or -name "CVS" \) | xargs rm -rf

clean:;	rm -f $(OBJECTS) $(SCRATCH)

