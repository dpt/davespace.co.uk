<* $Id$ *>

<page heading="Immediate Values" rev="operand2" cur="immediates" fwd="branch">
<header>
  <sidebar>
  <content>
<article>
  <p>You can&rsquo;t fit an arbitrary 32-bit value into a 32-bit instruction
  word. <ARM> data processing instructions have 12 bits of space for values in
  their instruction word. This is arranged as a four-bit rotate value and an
  eight-bit immediate value:</p> <diagram src="immediate.png"
  alt="Immediate values.">
  <p>The 4-bit rotate value stored in bits 11-8 is multiplied by two giving a
  range of 0-30 in steps of two.</p>
  <p>Using this scheme we can express immediate constants such as:</p>
  <ul>
    <li><tt>0x000000FF</tt></li>
    <li><tt>0x00000FF0</tt></li>
    <li><tt>0xFF000000</tt></li>
    <li><tt>0xF000000F</tt></li>
  </ul>
  <p>But immediate constants such as:</p>
  <ul>
    <li><tt>0x000001FE</tt></li>
    <li><tt>0xF000F000</tt></li>
    <li><tt>0x55550000</tt></li>
  </ul>
  <p>...are not possible.</p>
  <p>An assembler will convert big values to the rotated form. Impossible
  values will cause an error.</p>
  <p>Some assemblers will use other tricks such as using <code>MVN</code>
  instead of <code>MOV</code> to form the bitwise complement of the required
  constant. For example the impossible instruction <code>MOV
  r0,#0xFFFFFFFF</code> could be assembled as <code>MVN r0,#0</code>.</p>
</article>
<commentary>
  <p>The impact of this is that some constants are &ldquo;<ARM>
  friendly&rdquo;. Some are not. Study of the numbers you&rsquo;re using can
  sometimes reveal scope for <a
    href="../efficient-c-for-arm/biasing.html">optimisation</a>.</p>
</commentary>
<article title="Loading Wide Values">
  <p>You can form constants wider than those available in a single instruction
  by using a sequence of instructions to build up the constant. For
  example:</p>
  <armsyntax>MOV r2, #0x55           ; R2 = 0x00000055
ORR r2, r2, r2, LSL #8  ; R2 = 0x00005555
ORR r2, r2, r2, LSL #16 ; R2 = 0x55555555</armsyntax>
    <p>...or load the value from memory:</p>
    <armsyntax>LDR r2, =0x55555555</armsyntax>
    <p>The pseudo-instruction <code>LDR Rx,=const</code> tries to form the
    constant in a single instruction, if possible, otherwise it will generate
    an <code>LDR</code>.</p>
  </article>
  </content>
  <footer>
</page>
