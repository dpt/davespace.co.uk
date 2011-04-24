<* $Id$ *>

<page heading="Architecture 4" rev="arm-arch123" cur="arm-arch4" fwd="arm-arch5">
  <header>
  <sidebar>
  <content>
  <slide>
    <dl>
      <dt>v4 is the oldest supported architecture today. It added:</dt>
      <ddd>Load/store instructions for signed and unsigned halfwords and
      bytes.</dd>
      <ddd><code>LDRH</code>, <code>LDRSH</code>, <code>LDRSB</code>.</dd>
      <ddd>System mode <ndash> privileged mode using user registers.</dd>
      <ddd>26-bit addressing no longer supported.</dd>
      <dt>v4T added:</dt>
      <ddd>Thumb mode.</dd>
    </dl>
  </slide>
  <commentary>
  <p>This is the first architecture to have a full formal definition.</p>
  <ul>
    <li>Ops which yielded <PC>+12 in earlier <ARM>s are declared
    UNPREDICTABLE.</li>
    <li>Reserves some of the <SWI> space for architecturally-defined
    operations.</li>
</ul>
  </commentary>
  </content>
  <footer>
</page>

