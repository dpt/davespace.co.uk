<* $Id$ *>

<page heading="Early Architectures" rev="arm-arch" cur="arm-arch123" fwd="arm-arch4">
  <slide>
    <dl>
      <dt>v1</dt>
      <ddd>Developed at Acorn, Cambridge, UK. Between October 1983 and April 1985.</dd>
      <ddd>Fewer than 25,000 transistors.</dd>
      <ddd>No multiply or coprocessor instructions.</dd>
      <ddd>26-bit addressing.</dd>
      <dt>v2</dt>
      <ddd>30,000 transistors.</dd>
      <ddd>32-bit multiplier instructions (<code>MUL</code> &amp; <code>MLA</code>).</dd>
      <dt>v2a</dt>
      <ddd>First <ARM> with an on-chip cache (ARM3).</dd>
      <dt>v3</dt>
      <ddd>32-bit addressing.</dd>
      <ddd>Undefined Instruction and Abort modes (allows virtual
      memory).</dd>
      <dt>v3M</dt>
      <ddd>Signed and unsigned long multiply and multiply-accumulate
      instructions: <code>SMULL</code>, <code>SMLAL</code>, <code>UMULL</code>,
      <code>UMLAL</code>.</dd>
    </dl>
  </slide>
  <commentary>
    <p>We&rsquo;ll now discuss the various architecture versions that <ARM>
    processors come in. This shows how the architecture has grown since it was
    invented in the early 80s.</p>
    <p>These v1 and v2 architectures pre-date <ARMLtd></p>
    <p>Age: <ARM> may be somewhat older than you were expecting! The first
    prototype was fired up on 26th April 1985.</p>
    <p>No multiply: Consider that <code>MUL</code> is iterative so conflicts
    with <RISC> philosophy: some other <RISC> architectures omit multiply
    instructions.</p>
    <dl>
      <dt>Other differences from later <ARM>s include:</dt>
      <ddd>R8+R9 not banked in <IRQ> mode.</dd>
      <ddd>No <code>LDR</code>/<code>STR</code> with register-specified
      shifts.</dd>
    </dl>
    <p>Sales: The only commercial product made from this version was the <ARM>
    second processor board for the <BBC> Micro. This was only sold in small
    numbers for specialist needs but established the <ARM> as the world&rsquo;s
    first commercial <RISC> processor.</p>
    <blockquote>"The first <ARM>-based product was the <ARM> Development
    System, a second processor for the <BBC> Master. It cost around
    &pound;4,000 to buy, and included the <ARM> processor and three support
    chips, 4 Mb of <RAM> and a set of development tools with an enhanced
    version of <BBC> <BASIC>."</blockquote>
    <p>Acorn also used this <ARM> internally in Archimedes prototypes.</p>
  </commentary>
</page>

