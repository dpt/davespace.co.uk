<* $Id$ *>

<page heading="Multiply Instructions" rev="conditional" cur="multiply" fwd="data-transfer">
  <header>
  <sidebar>
  <content>
  <article title="32&times;32&rarr;32 Multiply Instructions">
    <format>&lt;operation&gt;{cond}{S} Rd, Rm, Rs {, Rn}</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>MUL</code> <dfn>multiply</dfn></dt>
      <dd>Rd := Rm &times; Rs</dd>
      <dt><code>MLA</code> <dfn>multiply with accumulate</dfn></dt>
      <dd>Rd := Rn + (Rm &times; Rs)</dd>
    </dl>
    <p>The multiply instructions produce the same result for both signed and
    unsigned values.</p>
    <p>Specifying the same register for <var>Rm</var> and <var>Rs</var> has
    UNPREDICTABLE results. UNPREDICTABLE means that the result of an
    instruction cannot be relied upon.</p>
  </article>

  <article title="32&times;32&rarr;64 Multiply Instructions">
    <format>&lt;operation&gt;{cond}{S} RdLo, RdHi, Rm, Rs</format>
    <p>64-bit result output into two registers.</p>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>UMULL</code> <dfn>unsigned multiply long</dfn></dt>
      <dd>RdHi, RdLo := Rm &times; Rs</dd>
      <dt><code>UMLAL</code> <dfn>unsigned multiply with accumlate long</dfn></dt>
      <dd>RdHi, RdLo := RdHi,RdLo + (Rm &times; Rs)</dd>
      <dt><code>SMULL</code>  <dfn>signed multiply long</dfn></dt>
      <dd>RdHi, RdLo := Rm &times; Rs</dd>
      <dt><code>SMLAL</code>  <dfn>signed multiply with accumlate long</dfn></dt>
      <dd>RdHi, RdLo := RdHi,RdLo + (Rm &times; Rs)</dd>
    </dl>
    <p>Note that they have the same form, but they treat the sign bit
    differently.</p>
  </article>
  </content>
  <footer>
</page>

