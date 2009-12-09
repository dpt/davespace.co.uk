<* $Id$ *>

<page heading="Division" rev="fp" cur="division" fwd="unaligned">
  <nav>
  <heading>
  <slide>
    <p>Like floating point, division is also <strong>emulated</strong>.</p>
    <p>It&rsquo;s implemented by two runtime library functions. In
    <ARM>&rsquo;s tools they&rsquo;re called:</p>
    <ul>
      <li><tt>__rt_sdiv</tt> for signed values.</li>
      <li><tt>__rt_udiv</tt> for unsigned values.</li>
    </ul>
    <p>Slow:</p>
    <ul>
      <li>10-100&times; slower than equivalent shift operations (20-140 cycles)
      depending on the values.</li>
    </ul>
    <p>It&rsquo;s not always so bad for divisions by a constant:</p>
    <ul>
      <li>Often optimised away by the compiler.</li>
      <li>If you divide by a power of two the compiler may be able to emit a
      shift instead.</li>
    </ul>
    <p>Possible solutions:</p>
    <ul>
      <li>Multiply by a fixed-point reciprocal then shift.</li>
      <li>Avoid where possible by algebraic substitution.
      <ul>
        <lid>e.g. rewrite <tt>(x
          &divide; y) &gt; z</tt> as <tt>x &gt; (z &times; y)</tt></li>
      </ul>
      </li>
      <li>Use unsigned operands to avoid sign fix-up operations.</li>
      <li>Avoid modulo with a wrap-around counter.</li>
      <li>Use lookup tables for small problems.</li>
    </ul>
  </slide>
  <slide title="Modulus">
    <p>Modulus is implemented by the same routine as division.</p>
    <ul>
      <li>The routine produces both results simultaneously.</li>
      <li>One or the other can be computed for free.</li>
    </ul>
  </slide>
  <footer>
  </heading>
</page>

