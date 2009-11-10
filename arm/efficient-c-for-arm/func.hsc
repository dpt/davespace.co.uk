<* $Id$ *>

<page heading="Function Calls" rev="regalloc" cur="func" fwd="smallfunc">
  <nav>
  <heading>
  <slide>
    <p>First four arguments to a function are passed in R0-R3.</p>

    <p>The remainder of the arguments are passed on the stack.</p>

    <p>Therefore, functions taking four or fewer arguments avoid the stack,
    which allows for greater efficiency.</p>

    <p>Almost always more efficient to group subsequent args together and pass
    them together as a <code>struct</code>.</p>
  </slide>
  <commentary>
    <p>This is from section 5.5 of ARM System Developer's Guide.</p>
    <p><code>long long</code> / <code>double</code> use two registers.</p>
    <p>The benefit is not on the callee side, but on the caller side where it
    will have to perform fewer register setups and less register
    rearrangement.</p>
  </commentary>
  <footer>
  </heading>
</page>

