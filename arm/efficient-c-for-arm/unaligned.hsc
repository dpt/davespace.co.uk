<* $Id$ *>

<page heading="Unaligned Data Access" rev="division" cur="unaligned" fwd="bools">
  <nav>
  <heading>
  <slide>
    <ul>
      <li>ARM favours 32-bit aligned addresses.</li>
      <li>Unaligned values have to be pulled from memory a byte at a time and
      reformed.</li>
    </ul>

    <!-- class = "good" -->
    <armsyntax>LDR Rd,[Ra]</armsyntax>

    <!-- class = "bad" -->
    <armsyntax>LDRB Rd,[Ra,#0]
LDRB Rt,[Ra,#1]
ORR  Rd,Rd,Rt,LSL #8
LDRB Rt,[Ra,#2]
ORR  Rd,Rd,Rt,LSL #16
LDRB Rt,[Ra,#3]
ORR  Rd,Rd,Rt,LSL #24</armsyntax>

  </slide>
  <commentary>
  </commentary>
  <footer>
  </heading>
</page>

