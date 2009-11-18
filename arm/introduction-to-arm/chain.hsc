<* $Id$ *>

<page heading="A Call Chain" rev="stack" cur="chain" fwd="task-one">
  <nav>
  <heading>
  <slide>
    <diagram src="call.png" alt="Diagram of a call chain." width="354" height="305">
    <ol>
      <li>Routine A branches with link (<code>BL</code>) to routine B. This
      saves its return address, the address of the next instruction, into R14
      and then jumps to the routine B&rsquo;s first instruction.</li>
      <li>Routine B is going to call another subroutine, routine C. Were it to
      immediately call routine C using <code>BL</code> then its existing stored
      R14 would be overwritten. So it stores its R14 to the stack to preserve
      it.</li>
      <li>It <code>BL</code>&rsquo;s to routine C. (R14 &larr; return address,
      PC &larr; Routine C).</li>
      <li>Routine C does its work, then returns using MOV pc,r14. Its return
      value is passed back in R0. R1 is corrupted. (R0..R3 are allowed to be
      corrupted in <abbr title="ARM Architecture Procedure Calling Standard">AAPCS</abbr>).</li>
      <li>We return to Routine C after the <code>BL</code> instruction.</li>
      <li>It restores R14 from the stack.</li>
      <li>A return is effected and we end up at the instruction after the
      original <code>BL</code>.</li>
    </ol>
    <p>Routine C does not call any subroutines; it is known as a
    <dfn>leaf</dfn> routine. Leaf routines can dispense with the overhead of
    storing their return address on the stack.</p>
  </slide>
  <footer>
  </heading>
</page>

