<* $Id$ *>

<page heading="Unaligned Data Access" rev="division" cur="unaligned" fwd="bools">
  <header>
  <sidebar>
  <content>
  <article>
    <ul>
      <li><ARM> favours 32-bit aligned addresses.</li>
      <li>Unaligned values have to be pulled from memory a byte at a time and
      reformed.</li>
    </ul>
  </article>
  <examples>
    <p>A load from a guaranteed alignment:</p>
    <armsyntax>LDR Rd,[Ra]</armsyntax>
    <p>A load from an unspecified alignment:</p>
    <armsyntax>LDRB Rd,[Ra,#0]
LDRB Rt,[Ra,#1]
ORR  Rd,Rd,Rt,LSL #8
LDRB Rt,[Ra,#2]
ORR  Rd,Rd,Rt,LSL #16
LDRB Rt,[Ra,#3]
ORR  Rd,Rd,Rt,LSL #24</armsyntax>
    <p>Each byte must be individually fetched and merged into the result.</p>
  </examples>
  </content>
  <footer>
</page>

