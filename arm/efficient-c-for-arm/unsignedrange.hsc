<* $Id$ *>

<page heading="Unsigned Ranges" rev="biasing" cur="unsignedrange" fwd="baseptr">
  <header>
  <sidebar>
  <content>
  <slide>
    <p>When testing for a value within a range we can apply the <dfn>unsigned
    range optimisation</dfn>:</p>
    <ul>
      <li>Shift the range down so its minimum is zero.</li>
      <li>Cast to <code>unsigned</code>.</li>
      <li>&rArr; Any negative values become large positive values.</li>
    </ul>
    <p>This means we can do a single test rather than two.</p>
    <p>Eliminates branching.</p>
  </slide>
  <examples>
  <before>
  <csyntax>int insideRange1(int v, int min, int max)
{
  return v &gt;= min &amp;&amp; v &lt; max;
}</csyntax>
<armsyntax>insideRange1 CMP   r0,r1
             BLT   |L1.20|
             CMP   r0,r2
             MOVLT r0,#1
             MOVLT pc,lr
|L1.20|
             MOV   r0,#0
             MOV   pc,lr</armsyntax>
  </before>
  <after>
<csyntax>int insideRange2(int v, int min, int max)
{
  return (unsigned) (v - min) &lt; (max - min);
}</csyntax>
<armsyntax>insideRange2 SUB   r0,r0,r1
             SUB   r1,r2,r1
             CMP   r0,r1
             MOVCS r0,#0
             MOVCC r0,#1
             MOV   pc,lr</armsyntax>
  </after>
  </examples>
  <commentary>
    <p>In some cases the compiler can make this transformation itself.</p>
    <p>It&rsquo;s now branchless but mightn&rsquo;t terminate as early.</p>
    <p>This is especially beneficial when &lsquo;min&rsquo; is zero. Of course
    this becomes even more beneficial when testing 2D and 3D ranges.</p>
  </commentary>
  </content>
  <footer>
</page>

