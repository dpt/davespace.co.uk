<* $Id$ *>

<page heading="Compare Instructions" rev="logical" cur="compare" fwd="barrel-shifter">
  <header>
  <sidebar>
  <content>
  <article>
    <format>&lt;operation&gt;{cond} Rn,&lt;Operand2&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>CMP</code> <ndash> <dfn>compare</dfn></dt>
      <dd>Flags set to result of (Rn &minus; Operand2).</dd>
      <dt><code>CMN</code> <ndash> <dfn>compare negative</dfn></dt>
      <dd>Flags set to result of (Rn + Operand2).</dd>
      <dt><code>TST</code> <ndash> <dfn>bitwise test</dfn></dt>
      <dd>Flags set to result of (Rn AND Operand2).</dd>
      <dt><code>TEQ</code> <ndash> <dfn>test equivalence</dfn></dt>
      <dd>Flags set to result of (Rn EOR Operand2).</dd>
    </dl>
    <p>Comparisons produce no results <ndash> they just set condition codes.
    Ordinary instructions will also set condition codes if the &ldquo;S&rdquo;
    bit is set. The &ldquo;S&rdquo; bit is implied for comparison
    instructions.</p>
  </article>
  <examples>
    <dl>
      <dt><code>CMP r0, #42</code></dt>
      <dd>Compare R0 to 42.</dd>
      <dt><code>CMN r2, #42</code></dt>
      <dd>Compare R2 to &minus;42.</dd>
      <dt><code>TST r11, #1</code></dt>
      <dd>Test bit zero.</dd>
      <dt><code>TEQ r8, r9</code></dt>
      <dd>Test R8 equals R9.</dd>
      <dt><code>SUBS r1, r0, #42</code></dt>
      <dd>Compare R0 to 42, with result.</dd>
    </dl>
  </examples>
  <commentary>
    <ul>
      <li><code>CMP</code> is like <code>SUB</code>.</li>
      <li><code>CMN</code> is like <code>ADD</code> (subtract of a negative
      number is the same as add).</li>
      <li><code>TST</code> is like <code>AND</code>.</li>
      <li><code>TEQ</code> is like <code>EOR</code> (exclusive or of identical
      numbers gives result of zero).</li>
    </ul>
  </commentary>
  </content>
  <footer>
</page>

