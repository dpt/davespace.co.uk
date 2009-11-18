#!/usr/bin/perl -W
#
# Emit HTML + CSS to syntax colour ARM.
#
# $Id$

binmode STDOUT;

@lines = <>;
#chomp(@lines);
$lines = join("", @lines);

# separate comments field
#
# if (m/;/) ?

# ARM constants
$lines =~ s!(\b[0-9]+\b)!<span class="decval">$1</span>!g;
# ARM hex constants
$lines =~ s!(\b0x[0-9A-Fa-f]+\b)!<span class="decval">$1</span>!g;
# ARM comments
$lines =~ s!(;.*)!<span class="comment">$1</span>!g;
# ARM mnemonics
$lines =~ s!\b(((MOV)|(MVN)|(ADD)|(ADC)|(SUB)|(SBC)|(RSB)|(RSC)|(AND)|(EOR)|(ORR)|(BIC)|(CMP)|(CMN)|(TST)|(TEQ)|(B)|(BL)|(BX)|(MUL)|(MLA)|(UMULL)|(UMLAL)|(SMULL)|(SMLAL)|(LDR)|(STR)|(LDM)|(STM)|(ADR))[A-Z]*)\b!<span class="keyword">$1</span>!g;
$lines =~ s!\b((LSL)|(LSR)|(ASR)|(ROR)|(RRX))\b!<span class="keyword">$1</span>!g;

# match 1 or 0 times

#(mem suffixes)
#LSL LSR ASR ROR RRX
#IA IB DA DB FD ED FA EA

print $lines;

