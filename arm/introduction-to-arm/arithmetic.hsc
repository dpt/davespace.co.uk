<* $Id$ *>

<page heading="Arithmetic" rev="movement" cur="arithmetic" fwd="logical">
  <nav>
  <heading>
  <slide>
    <format>&lt;operation&gt;{cond}{S} Rd,Rn,&lt;Operand2&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>ADD</code> &ndash; <dfn>addition</dfn></dt>
      <dd>Rd := Rn + Operand2</dd>
      <dt><code>ADC</code> &ndash; <dfn>add with carry</dfn></dt>
      <dd>Rd := Rn + Operand2 + Carry</dd>
      <dt><code>SUB</code> &ndash; <dfn>subtraction</dfn></dt>
      <dd>Rd := Rn - Operand2</dd>
      <dt><code>SBC</code> &ndash; <dfn>subtract with carry</dfn></dt>
      <dd>Rd := Rn - Operand2 - NOT(Carry)</dd>
      <dt><code>RSB</code> &ndash; <dfn>reverse subtract</dfn></dt>
      <dd>Rd := Operand2 - Rn</dd>
      <dt><code>RSC</code> &ndash; <dfn>reverse subtract with carry</dfn></dt>
      <dd>Rd := Operand2 - Rn - NOT(Carry)</dd>
    </dl>
  </slide>
  <examples>
    <dl>
      <dt><code>ADD r0, r1, r2</code></dt>
      <dd>R0 = R1 + R2</dd>
      <dt><code>SUB r5, r3, #10</code></dt>
      <dd>R5 = R3 - 10</dd>
      <dt><code>RSB r2, r5, #&amp;FF00</code></dt>
      <dd>R2 = 0xFF00 - R5</dd>
    </dl>
  </examples>
  <commentary>
    <p><code>RSB</code> and <code>RSC</code> subtract in reverse order (e.g. y
    - x not x - y).</p>
    <p>Multiplication has a different format and is described later.</p>
    <p>No divide - compiler uses run-time library or shifts to perform
    division.</p>
  </commentary>
  <footer>
  </heading>
</page>
