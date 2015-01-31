#!/usr/bin/env python
#
# highlightsyntax.py: syntax highlight blog posts, with cache
#
# by dpt

# TODO
# - ARM: Cope with 'CMPNE r0, #'B'' (the second 'B' gets highlighted as instr.)

import os
import pickle
import re
import subprocess
import sys


CACHEFILE = 'tmp/syntaxhighlightcache.p'
SCRIPT    = os.path.abspath(sys.argv[0])

def highlightarm(fragment):

	charconst = re.compile(r"('\w')")
	command   = re.compile(r"\b((LSL)|(LSR)|(ASR)|(ROR)|(RRX))\b")
	decconst  = re.compile(r"(#[0-9]+)")
	directive = re.compile(r"(AREA|CODE|READONLY|EXPORT|END)")
	hexconst  = re.compile(r"(#0x[0-9A-Fa-f]+)")
	instr	  = re.compile(r"\b(((MOV)|(MVN)|(ADD)|(ADC)|(SUB)|(SBC)|(RSB)|(RSC)|(AND)|(EOR)|(ORR)|(BIC)|(CMP)|(CMN)|(TST)|(TEQ)|(B)|(BL)|(BX)|(MUL)|(MLA)|(UMULL)|(UMLAL)|(SMULL)|(SMLAL)|(LDR)|(STR)|(LDM)|(STM)|(ADR))[A-Z]*)\b")
	label	  = re.compile(r"^(\w+)")

	# In left-to-right order.
	syntax = ( ( directive, "k"  ),
		   ( label,     "nf" ),
		   ( instr,     "k"  ),
		   ( hexconst,  "mh" ),
		   ( decconst,  "mi" ),
		   ( command,   "k"  ),
		   ( charconst, "sc" ) )

	output = '<div class="highlight"><pre>'

	for line in fragment.split('\n'):
		parts = line.split(';', 1)

		command = comment = None

		if len(parts) == 1:
			command = parts[0]
		elif len(parts) == 2:
			command, comment = parts

		if command:
			for s,t in syntax:
				command = s.sub(r'<span class="%s">\1</span>' % t, command)
			output += command
		if comment:
			output += '<span class="c1">' + ';' + comment + '</span>'
		output += '\n'
	
	if output[-1] == '\n':
		output = output[:-1]

	output += '</pre></div>'

	return output

cache = {}

# discard the cache if it's older than this script
try:
	if os.stat(CACHEFILE).st_mtime > os.stat(SCRIPT).st_mtime:
		cache = pickle.load(open(CACHEFILE, "rb"))
except OSError:
	pass

# suck in whole file
content = sys.stdin.read()

# split into chunks of uninteresting and interesting (``` delimited)
chunks = re.split('```', content)
# => every odd chunk is interesting

# pass interesting chunks into a highlighter, and replace
for index, chunk in enumerate(chunks):
	if index % 2 == 0:
		continue

	if chunk in cache:
		chunks[index] = cache[chunk]
	else:
		splittered = chunk.split('\n')
		language = splittered[0].strip()
		fragment = '\n'.join(splittered[1:])

		if language == 'arm':
			stdout = highlightarm(fragment)
		elif language == '':
			stdout = '<div class="highlight"><pre>' + fragment + '</pre></div>'
		else:
			p = subprocess.Popen(['pygmentize', '-f','html', '-l',language],
				stdin=subprocess.PIPE,
				stdout=subprocess.PIPE,
				stderr=subprocess.PIPE)
			stdout, stderr = p.communicate(fragment)

			if stderr:
				print stderr

		chunks[index] = cache[chunk] = stdout

# join and write out
for chunk in chunks:
	sys.stdout.write(chunk)

pickle.dump(cache, open(CACHEFILE, "wb"))

