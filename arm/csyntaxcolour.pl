#!/usr/bin/perl -W
#
# Emit HTML + CSS to syntax colour C.
#
# $Id$

binmode STDOUT;

require Syntax::Highlight::Engine::Kate::C;

my $hl = new Syntax::Highlight::Engine::Kate::C(
    substitutions => {
#       "<" => "&lt;",
#       ">" => "&gt;",
#       "&" => "&amp;",
    },
    format_table => {
       Alert => ['<span class="alert">', '</span>'],
       BaseN => ['<span class="basen">', '</span>'],
       BString => ['<span class="bstring">', '</span>'],
       Char => ['<span class="char">', '</span>'],
       Comment => ['<span class="comment">', '</span>'],
       DataType => ['<span class="datatype">', '</span>'],
       DecVal => ['<span class="decval">', '</span>'],
       Error => ['<span class="error">', '</span>'],
       Float => ['<span class="float">', '</span>'],
       Function => ['<span class="function">', '</span>'],
       IString => ['<span class="istring">', '</span>'],
       Keyword => ['<span class="keyword">', '</span>'],
       Normal => ['', ''],
       Operator => ['<span class="operator">', '</span>'],
       Others => ['<span class="others">', '</span>'],
       RegionMarker => ['<span class="regionmarker">', '</span>'],
       Reserved => ['<span class="reserved">', '</span>'],
       String => ['<span class="string">', '</span>'],
       Variable => ['<span class="variable">', '</span>'],
       Warning => ['<span class="warning">', '</span>'],
    },
);

while (my $in = <>) {
   print $hl->highlightText($in);
}

