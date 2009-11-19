#!/usr/bin/perl -W
#
# Emit HTML + CSS to syntax colour ARM.
#
# $Id$

binmode STDOUT;

while ($line = <>) {
    chomp($line);

    # use a split limit so that any ;'s in comments will be ignored
    ($command, $comment) = split("; ", $line, 2);

    if (defined $command) {
        # unescape HTML entities? (then reescape afterwards)

        # integer constants
        $command =~ s!(\b[0-9]+\b)!<span class="decval">$1</span>!g;
        # hex constants
        $command =~ s!(\b0x[0-9A-Fa-f]+\b)!<span class="decval">$1</span>!;
        # mnemonics
        $command =~ s!\b(((MOV)|(MVN)|(ADD)|(ADC)|(SUB)|(SBC)|(RSB)|(RSC)|(AND)|(EOR)|(ORR)|(BIC)|(CMP)|(CMN)|(TST)|(TEQ)|(B)|(BL)|(BX)|(MUL)|(MLA)|(UMULL)|(UMLAL)|(SMULL)|(SMLAL)|(LDR)|(STR)|(LDM)|(STM)|(ADR))[A-Z]*)\b!<span class="keyword">$1</span>!;
        $command =~ s!\b((LSL)|(LSR)|(ASR)|(ROR)|(RRX))\b!<span class="keyword">$1</span>!;

        # |.*| labels

        #(mem suffixes)
        #IA IB DA DB FD ED FA EA
    }

    print "$command" if (defined $command);
    print "; <span class=\"comment\">$comment</span>" if (defined $comment);
    print "\n";
}

