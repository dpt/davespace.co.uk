#!/usr/bin/perl -W
#
# Emit HTML + CSS to syntax colour C.
#
# $Id$

require Syntax::Highlight::Engine::Kate::C;

my $sh = new Syntax::Highlight::Engine::Kate::C(
    substitutions => {
       "<" => "&lt;",
       ">" => "&gt;",
       "&" => "&amp;",
#       " " => "&nbsp;",
#       "\t" => "&nbsp;&nbsp;&nbsp;",
#       "\n" => "<BR>\n",
    },
    format_table => {
       Alert => ['<span class="alert">', '</span>'],
       BaseN => ['<span class="basen">', '</span>'],
       BString => ['<span class="bstring">', '</span>'],
       Char => ['<cpan class="char">', '</span>'],
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

my $html = $sh->highlightText(qq(
int main(void)
{
    int a,b,c;
    a = 1;
    b = 2;
    c = a & b;
    printf("%d",c);
    return 1;
}
));

my $css = qq(
<style type="text/css">
  span.comment  { color: #00a000; }
  span.string   { color: #0000c0; }
  span.keyword  { color: #a00000; font-weight: bold; }
  span.reserved { color: #a0a000; font-weight: bold; }
</style>
);

$html = qq(
<html>
<head>
$css
</head>
<body>
$html
</body>
);

print $html;

#print "<html>\n<head>\n</head>\n<body>\n";
#while (my $in = <>) {
#   print $hl->highlightText($in);
#}
#print "</body>\n</html>\n";

