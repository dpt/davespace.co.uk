# Makefile for www.davespace.co.uk/arm/
# $Id$

DESTDIR	   = .
IGNORE	   = IGN="21|87"
STDINC	   = ../macros/site.hsc macros/section.hsc macros/group.hsc
SCRIPTS	   = armsyntaxcolour.pl csyntaxcolour.pl
HSCMISC	   = PREFSFILE=../hsc.prefs MAXMSG=0 MAXERR=0 XHTML COMPACT GETSIZE

HSCFLAGS   = $(HSCMISC) $(IGNORE) $(STDINC)
HSC	   = hsc

.SUFFIXES:	# Delete the default suffixes
.SUFFIXES: .hsc .html

.PHONY:	all clean subs

SOURCES	= $(wildcard *.hsc)
OBJECTS = $(SOURCES:.hsc=.html)
SCRATCH = perlinput *.tmp

# Remember that the stylesheet isn't a build time dependency.
all:	$(OBJECTS) subs

# Objects depend on any macros or scripts changing.
$(OBJECTS):	$(STDINC) $(SCRIPTS)

.hsc.html:;	$(HSC) $(HSCFLAGS) TO=$(DESTDIR)/$@ $<

subs:;	make -C introduction-to-arm
	make -C efficient-c-for-arm

clean:;	-rm -f $(OBJECTS) $(SCRATCH)
	make -C introduction-to-arm clean
	make -C efficient-c-for-arm clean

