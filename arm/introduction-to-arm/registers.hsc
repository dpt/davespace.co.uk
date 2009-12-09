<* $Id$ *>

<page heading="Registers" rev="instruction-sets" cur="registers" fwd="pc">
  <nav>
  <heading>
  <slide>
    <p><ARM> has sixteen registers, called R0 to R15. All are 32 bits wide.</p>
    <diagram src="regs.png" alt="Diagram of registers and their aliases." width="544" height="190">
    <p>All registers are general purpose, save for:</p>
    <dl>
      <dt>R13 / <SP></dt>
      <ddd>Holds the stack pointer. <a href="#note1">&dagger;</a></dd>
      <dt>R14 / <LR></dt>
      <ddd>Is the callers&rsquo;s return address.</dd>
      <dt>R15 / <PC></dt>
      <ddd>Contains the program counter.</dd>
    </dl>
    <p><CPSR> is the current program status register. This holds flags.</p>
  </slide>
  <commentary>
    <p><a name="note1">&dagger;</a> Strictly R13 is used for the stack pointer
    by convention, rather than a rule, in <ARM> mode. In Thumb mode it is more
    hardwired.</p>
    <p>This is the <dfn>user mode</dfn> register set.</p>
    <p>The registers also have aliases, subject to the current calling
    convention. The ones shown here are for <AAPCS> <ndash> the <ARM> standard
    calling convention.</p>
  </commentary>
  <slide title="Load-Store">
    <p><ARM> is a load-store architecture:</p>
    <ul>
      <li>You must load values into registers in order to operate upon
      them.</li>
      <li>No instructions directly operate on values in memory.</li>
    </ul>
  </slide>
  <footer>
  </heading>
  </page>
