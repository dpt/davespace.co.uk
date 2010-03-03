#!/usr/bin/perl -W
#
# Emit HTML + CSS to syntax colour C.
#
# $Id$
#
# 0 not highlighted (-0 ok)
# 4 not highlighted (-4 ok)
# typedef not highlighted
#
# integers detected as 'float', negative integers detected as 'decval'
#

require Syntax::Highlight::Engine::Kate::ANSI_C89;

my $sh = new Syntax::Highlight::Engine::Kate::ANSI_C89(
    substitutions => {
       "<" => "&lt;",
       ">" => "&gt;",
       "&" => "&amp;",
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
    typedef struct Point { int x,y; } Point;
    int a,b,c;

    a = 0 + 1 - 2 * 3 / 4 % 5 * ( 6 & ~7 | 8 + 9 );
    b = -0 + -1 - -2 * -3 / -4 % -5 * ( -6 & ~-7 | -8 + -9 );
    c = a & b;
    printf("%d",c);

    return -1;
}
));

my $css = qq(
<style type="text/css">
  PRE           { background-color: #333;
                  color: #fff;
                  line-height: 110%;
                  padding: 0.5em; }

  .alert        { color: red;     }
  .basen        { color: #ffa0a0; }
  .bstring      { color: red;     }
  .char         { color: #ffdead; }
  .comment      { color: #87ceeb; }
  .datatype     { color: #bdb76b; }
  .decval       { color: #ffa0a0; }
  .error        { color: red;     }
  .float        { color: #ffa0a0; }
  .function     { color: red;     }
  .istring      { color: red;     }
  .keyword      { color: #f0e68c; }
  .operator     { color: red;     }
  .others       { color: #cd5c5c; }
  .regionmarker { color: red;     }
  .reserved     { color: red;     }
  .string       { color: #ffa0a0; }
  .variable     { color: red;     }
  .warning      { color: red;     }
</style>
);

print qq(
<html>
<head>
$css
</head>
<body>
<pre>$html</pre>
</body>
</html>
);
