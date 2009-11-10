<* $Id$ *>

<page heading="Small Functions" rev="func" cur="smallfunc" fwd="biasing">
  <nav>
  <heading>
  <slide>
    <p>If the compiler can &lsquo;see&rsquo; the definition of a
    function&mdash; i.e. its definition is present in the same source
    file&mdash;it can optimise it further:</p>
    <ul>
      <li>The function can be subsumed entirely into its caller -
      <dfn>inlining</dfn>.</li>
      <li>Registers which are never used inside the function don&rsquo;t need
      to be preserved.</li>
    </ul>
    <p>This can be slightly confusing when examining the resultant assembly
    language code. Functions may appear to vanish when they&rsquo;re subsumed
    into the caller.</p>
  </slide>
  <commentary>
  </commentary>
  <footer>
  </heading>
</page>

