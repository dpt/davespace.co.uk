<* $Id$ *>

<page heading="Registers" rev="instruction-sets" cur="registers" fwd="pc">
  <header>
  <sidebar>
  <content>
  <slide>
    <p><ARM> has sixteen registers visible at any one time. They are named R0
    to R15. All are 32 bits wide.</p>
    <diagram src="regs.png" alt="Diagram of registers.">
    <p>The registers may also be known by the following aliases<a
      href="#note1">&dagger;</a>:</p>
    <diagram src="regaliases.png" alt="Diagram of registers' aliases.">
    <p>All of the registers are general purpose, save for:</p>
    <dl>
      <dt>R13 / <SP></dt>
      <ddd>which holds the <dfn>stack pointer</dfn>. <a
        href="#note2">&Dagger;</a></dd>
      <dt>R14 / <LR></dt>
      <ddd>the <dfn>link register</dfn> which holds the callers&rsquo;s return
      address.</dd>
      <dt>R15 / <PC></dt>
      <ddd>which holds the <dfn>program counter</dfn>.</dd>
    </dl>
    <p>In addition to the main registers there is also a status register:</p>
    <diagram src="regpsr.png" alt="Diagram of status registers.">
    <p><CPSR> is the <dfn>current program status register</dfn>. This holds
    flags: results of aritmetic and logical operations.</p>
  </slide>
  <slide title="Load-Store Architecture">
    <p><ARM> is a <dfn>load-store architecture</dfn>:</p>
    <ul>
      <li>You must load values into registers in order to operate upon
      them.</li>
      <li>No instructions directly operate on values in memory.</li>
    </ul>
  </slide>
  <commentary>
    <p>This slide shows the <dfn>user mode</dfn> register set.</p>
    <p><a name="note1">&dagger;</a> Register aliases are subject to the current
    calling convention. The ones shown here are apply to <AAPCS> <ndash> the
    <ARM> standard calling convention.</p>
    <p><a name="note2">&Dagger;</a> Strictly R13 is used for the stack pointer
    by convention, rather than a rule, in <ARM> mode. In Thumb mode it is more
    hardwired.</p>
  </commentary>
  </content>
  <footer>
  </page>
