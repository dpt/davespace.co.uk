<* $Id$ *>

<page heading="Base Pointer Optimisation" rev="unsignedrange" cur="baseptr" fwd="references">
  <nav>
  <heading>
  <slide>
    <p>Grouping global or <code>static</code> variables together into a
    <code>struct</code> allows the compiler to refer to them through a single
    base pointer.</p>
    <p>Instead of having multiple variables kept at multiple locations within
    the binary, this turns them into a single &ldquo;large&rdquo; variable
    accessed through one known offset.</p>
  </slide>
  <commentary>
    <p>
      <a class="external"
        href="http://www.arm.com/support/faqdev/1490.html">http://www.arm.com/support/faqdev/1490.html</a>
    </p>
    <p>
      <a class="external"
        href="http://www.arm.com/pdfs/DAI0036B_c_globaldata.pdf">http://www.arm.com/pdfs/DAI0036B_c_globaldata.pdf</a>
    </p>
  </commentary>
  <footer>
  </heading>
</page>
