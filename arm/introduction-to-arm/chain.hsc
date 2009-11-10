<* $Id$ *>

<page heading="A Call Chain" rev="stack" cur="chain" fwd="task-one">
  <nav>
  <heading>
  <slide>
    <diagram src="call.png" alt="Diagram of a call chain." width="544" height="132">
    <ol>
      <li>Leftmost routine saves R14 and jumps to <tt>func</tt>.</li>
      <li>Middle <tt>func</tt> saves its registers (R4 and R14, the link register)
      on the stack.</li>
      <li>It in turn saves its return address in R14 and calls
      <tt>mystery</tt>.</li>
      <li>The rightmost <tt>mystery</tt> does its work, then returns with a
      <code>MOV pc, r14</code>.</li>
      <li>We return to middle after the branch instruction.</li>
      <li>It restores its registers from the stack.</li>
      <li>A return is effected and we end up after the original green
      <code>BL</code>.</li>
    </ol>
    <p>Note that since <tt>mystery</tt> does not call any other functions it
    can dispense with the stacking overhead. Because of this it is known as a
    <dfn>leaf</dfn> function.</p>
  </slide>
  <commentary>
  </commentary>
  <footer>
  </heading>
</page>

