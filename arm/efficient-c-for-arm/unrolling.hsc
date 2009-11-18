<* $Id$ *>

<page heading="Loop Unrolling" rev="sentinels" cur="unrolling" fwd="datatypes">
  <nav>
  <heading>
  <slide>
  <p>Small loops can be <dfn>unrolled</dfn>.</p>
  <ul>
    <li>Inner part repeated multiple times.</li>
    <li>Higher performance.</li>
    <li>At the expense of increased code size.</li>
  </ul>
  <p>When unrolled:</p>
  <ul>
    <li>Loop counter needs to be updated less often.</li>
    <li>Fewer branches are executed.</li>
  </ul>
  <p>If small enough the loop can be completely unrolled.</p>
  <ul>
    <li>All test/branch overhead vanishes.</li>
  </ul>
  </slide>
  <examples>
    <before>
      <p>Before unrolling:</p>
<csyntax>int countbits1(unsigned int N)
{
  int nbits = 0;
  while (N) {
    if (N &amp; 1) nbits++;
    N &gt;&gt;= 1;
  }
  return nbits;
}</csyntax>
      <p>9 instructions, 6 cycles/bit.</p>
    </before>
    <after>
      <p>After unrolling:</p>
<csyntax>int countbits2(unsigned int N)
{
  int nbits = 0;
  while (N) {
    if (N &amp; 1) nbits++;
    if (N &amp; 2) nbits++;
    if (N &amp; 4) nbits++;
    if (N &amp; 8) nbits++;
    N &gt;&gt;= 4;
  }
  return nbits;
}</csyntax>
      <p>15 instructions, 3 cycles/bit.</p>
    </after>
  </examples>
  <commentary>
    <p>See <a class="external"
      href="http://en.wikipedia.org/wiki/Loop_unwinding">Loop unwinding</a> on
    Wikipedia.</p>
    <p>See <a class="external"
      href="http://en.wikipedia.org/wiki/Duff's_device">Duff&rsquo;s Device</a>
    on Wikipedia.</p>
  </commentary>
  <footer>
  </heading>
</page>

