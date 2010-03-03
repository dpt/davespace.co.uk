<* $Id$ *>

<page heading="Logical Instructions" rev="arithmetic" cur="logical" fwd="compare">
  <header>
  <sidebar>
  <content>
  <article>
    <format>&lt;operation&gt;{cond}{S} Rd,Rn,&lt;Operand2&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>AND</code> <ndash> <dfn>logical AND</dfn></dt>
      <dd>Rd := Rn AND Operand2</dd>
      <dt><code>EOR</code> <ndash> <dfn>exclusive OR</dfn></dt>
      <dd>Rd := Rn EOR Operand2</dd>
      <dt><code>ORR</code> <ndash> <dfn>logical OR</dfn></dt>
      <dd>Rd := Rn OR Operand2</dd>
      <dt><code>BIC</code> <ndash> <dfn>bitwise clear</dfn></dt>
      <dd>Rd := Rn AND NOT Operand2</dd>
    </dl>
  </article>
  <examples>
    <dl>
      <dt><code>AND r8, r7, r2</code></dt>
      <dd>R8 = R7 &amp; R2</dd>
      <dt><code>ORR r11, r11, #1</code></dt>
      <dd>R11 |= 1</dd>
      <dt><code>BIC r11, r11, #1</code></dt>
      <dd>R11 &amp;= ~1</dd>
      <dt><code>EOR r11, r11, #1</code></dt>
      <dd>R11 ^= 1</dd>
    </dl>
  </examples>
  </content>
  <footer>
</page>

