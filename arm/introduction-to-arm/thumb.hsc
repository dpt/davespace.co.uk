<* $Id$ *>

<page heading="Thumb" rev="task-two" cur="thumb" fwd="interworking">
  <header>
  <sidebar>
  <content>
  <article>
    <p>Thumb is a subset of the <ARM> instruction set encoded in 16-bit-wide
    instructions.</p>

    <ul>
      <li>Requires 70% of the space of <ARM> code.</li>
      <li>Uses 40% more instructions than equivalent <ARM> code.</li>
    </ul>

    <p>A <CPU> has Thumb support if it has a T in its name, or it is
    architecture v6 or later.</p>

    <dl>
      <dt>With 32-bit memory:</dt>
      <ddd><ARM> code is 40% faster than Thumb code.</dd>
      <dt>With 16-bit memory:</dt>
      <ddd>Thumb code is 45% faster than <ARM> code.</dd>
    </dl>

    <p>Uses 30% less external memory power than <ARM> code.</p>
  </article>
  <commentary>
    <p>The slide quotes <ARM>&rsquo;s &ldquo;ideal&rdquo; values. Take with a
    pinch of salt.</p>
  </commentary>
  <article title="Limitations">
    <p>Thumb is not a complete architecture: you can&rsquo;t have a Thumb-only
    <CPU>.</p>

    <p>Some of the limitations of Thumb mode include:</p>
    <ul>
      <li>Conditional execution only exists for branch instructions.</li>
      <li>Data processing ops use a two-address format, as opposed to
      <ARM>&rsquo;s three-address format.</li>
      <li>Its instruction encodings are less regular than <ARM>&rsquo;s.</li>
    </ul>

    <p>Thumb uses the same register set as <ARM> <mdash> but only R0-R7.</p>
  </article>
  <commentary>
    <p>Whereas R13&rsquo;s role as the stack pointer is a convention in <ARM>
    mode, in Thumb mode it&rsquo;s more hard-wired.</p>
  </commentary>
  </content>
  <footer>
</page>

