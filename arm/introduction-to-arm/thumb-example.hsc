<* $Id$ *>

<page heading="Thumb Example" rev="interworking" cur="thumb-example" fwd="thumb-2">
  <nav>
  <heading>
  <slide>
    <p>Here&rsquo;s the &lsquo;mystery&rsquo; routine from earlier rewritten in
    Thumb assembly language.</p>
    <armsyntax>mystery MOV r1, r0
        SUB r1, #'A'
        CMP r1, #'Z' - 'A'
        BHI exit
        ADD r0, #'a' - 'A'
exit
        BX  lr</armsyntax>
    <p>There are more instructions, but the instructions are half the size:</p>
    <ul>
      <li>In <ARM> it&rsquo;s 5 &times; 4 bytes = 20 bytes.</li>
      <li>In Thumb it&rsquo;s 6 &times; 2 bytes = 12 bytes <ndash> a 40%
      saving.</li>
    </ul>
  </slide>
  <commentary>
    <p>Note that not all Thumb instructions are always 16-bit. In particular
    some branch instructions are encoded as a pair of 16-bit instructions (high
    and low halves).</p>
  </commentary>
  <footer>
  </heading>
</page>

