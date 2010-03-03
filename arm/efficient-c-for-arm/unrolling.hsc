<* $Id$ *>

<page heading="Loop Unrolling" rev="sentinels" cur="unrolling" fwd="datatypes">
  <header>
  <sidebar>
  <content>
  <article>
  <p>Small loops can be <dfn>unrolled</dfn>.</p>
  <ul>
    <li>Inner part repeated multiple times.</li>
    <ul>
      <lid>Higher performance.</li>
      <lid>At the expense of increased code size.</li>
    </ul>
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
  </article>
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
    <p>See <wiki subj="Loop_unwinding">Loop unwinding</wiki> on Wikipedia.</p>
    <p>See <wiki subj="Duff's_device">Duff&rsquo;s Device</wiki> on
    Wikipedia.</p>
  </commentary>
  </content>
  <footer>
</page>

