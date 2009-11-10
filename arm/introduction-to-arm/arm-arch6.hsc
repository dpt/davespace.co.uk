<* $Id$ *>

<page heading="Architecture 6" rev="arm-arch5" cur="arm-arch6" fwd="arm-arch7">
  <nav>
  <heading>
  <slide>
    <dl>
      <dt>v6</dt>
      <dd>&ndash; Mixed endian data handling: <code>SETEND</code>, <code>REV</code>,
      <code>REV16</code>, <code>REVSH</code>.</dd>
      <dd>&ndash; 60+ new SIMD instructions: <code>SMUSD</code>, <code>SMUADX</code>,
      <code>USAD8</code>, <code>USADA8</code>.</dd>
      <dd>&ndash; Unaligned data handling.</dd>
      <dd>&ndash; New multiprocessing instructions: <code>LDREX</code>,
      <code>STREX</code>.</dd>
      <dt>v6T2</dt>
      <dd>&ndash; Thumb-2.</dd>
    </dl>
  </slide>
  <commentary>
    <p>Mandates the &ldquo;TEJ&rdquo; features for this and all subsequent
    architectures.</p>
    <p><code>USADxx</code>: Sum of absolute differences.</p>
  </commentary>
  <footer>
  </heading>
</page>

