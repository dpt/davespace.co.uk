<* $Id$ *>

<page heading="Movement Instructions" rev="organisation" cur="movement" fwd="arithmetic">
  <nav>
  <heading>
  <slide>
    <format>&lt;operation&gt;{cond}{S} Rd,&lt;Operand2&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>MOV</code> <ndash> <dfn>move</dfn></dt>
      <dd>Rd := Operand2</dd>
      <dt><code>MVN</code> <ndash> <dfn>move negated</dfn></dt>
      <dd>Rd := 0xFFFFFFFF EOR Operand2</dd>
    </dl>
  </slide>
  <examples>
    <dl>
      <dt><code>MOV r0, #42</code></dt>
      <dd>Move the constant 42 into register R0.</dd>
      <dt><code>MOV r2, r3</code></dt>
      <dd>Move the contents of register R3 into register R2.</dd>
      <dt><code>MVN r1, r0</code></dt>
      <dd>R1 = NOT(R0) = -43</dd>
      <dt><code>MOV r0, r0</code></dt>
      <dd>A <NOP> (no operation) instruction.</dd>
    </dl>
  </examples>
  <footer>
  </heading>
</page>

