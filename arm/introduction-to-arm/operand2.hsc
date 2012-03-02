<* $Id$ *>

<page heading="Operand2" rev="barrel-shifter" cur="operand2" fwd="immediates">
  <slide>
    <p><dfn>Operand2</dfn> is the flexible second operand to most instructions.
    It can take one of three different forms:
      <dl>
        <dt><dfn>Immediate value.</dfn></dt>
        <ddd>An 8-bit number rotated right by an even number of places.</dd>
        <dt>Register shifted by value.</dt>
        <ddd>A 5-bit unsigned integer shift.</dd>
        <dt>Register shifted by register.</dt>
        <ddd>The bottom 8 bits of a register.</dd>
      </dl>
    </p>
  </slide>
  <examples>
    <dl>
      <dt><code>MOV r0, #42</code></dt>
      <dt><code>ORR r1, r1, #0xFF00</code></dt>
      <dd>Immediate values.</dd>
      <dt><code>MOV r2, r2, LSR #1</code></dt>
      <dt><code>RSB r10, r5, r14, ASR #14</code></dt>
      <dd>Registers shifted by values.</dd>
      <dt><code>BIC r11, r11, r1, LSL r0</code></dt>
      <dt><code>CMP r9, r8, ROR r0</code></dt>
      <dd>Registers shifted by registers.</dd>
    </dl>
  </examples>
</page>

