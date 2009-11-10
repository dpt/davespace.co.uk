<* $Id$ *>

<page heading="Architecture 4" rev="arm-arch123" cur="arm-arch4" fwd="arm-arch5">
  <nav>
  <heading>
  <slide>
    <dl>
      <dt>v4 is the oldest supported architecture today. It added:</dt>
      <dd>&ndash; Load/store instructions for signed and unsigned halfwords and
      bytes.</dd>
      <dd>&ndash; <code>LDRH</code>, <code>LDRSH</code>, <code>LDRSB</code>.</dd>
      <dd>&ndash; System mode - privileged mode using user registers.</dd>
      <dd>&ndash; 26-bit addressing no longer supported.</dd>
      <dt>v4T added:</dt>
      <dd>&ndash; Thumb mode.</dd>
    </dl>
  </slide>
  <commentary>
  <p>This is the first architecture to have a full formal definition.</p>
  <ul>
    <li>Ops which yielded pc+12 in earlier ARMs are declared
    UNPREDICTABLE.</li>
    <li>Reserves some of the SWI space for architecturally-defined
    operations.</li>
</ul>
  </commentary>
  <footer>
  </heading>
</page>

