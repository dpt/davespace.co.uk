<* $Id$ *>

<page heading="Registers" rev="instruction-sets" cur="registers" fwd="pc">
  <nav>
  <heading>
  <slide>
    <diagram src="regs.png" alt="Diagram of registers and their aliases." width="544" height="190">
    <p>This is our basic set of registers. The <dfn>user mode</dfn> register
    set.</p>
    <p>All registers are 32 bits wide. All are general purpose, save for R14,
    R15 and CPSR.</p>
    <p>At the bottom are the AAPCS aliases for the registers. Note that the
    aliases may change depending on the calling convention in use.</p>
    <p>ARM is a load-store architecture: You must load values into registers in
    order to operate upon them. No instructions directly operate on values in
    memory.</p>
  </slide>
  <footer>
  </heading>
</page>

