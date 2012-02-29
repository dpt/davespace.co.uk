<* $Id$ *>

<page heading="Organisation" rev="syntax" cur="organisation" fwd="movement">
  <header>
  <sidebar>
  <content>
  <slide>
    <p>ARM has a three-address format:
      <ul class="packed">
        <li>Rd (destination register)</li>
        <li>Rn (source register)</li>
        <li>Rm (source register)</li>
      </ul>
    </p>
    <p>Before being used Rm is passed through the <dfn>barrel shifter</dfn>: a
    functional unit which can rotate and shift values. The result of this is
    called <dfn>Operand2</dfn>.</p>
    <p>Rn is used directly.</p>
    <diagram src="org.png" alt="Diagram of CPU organisation.">
    <p>The two operands are processed by the <ALU> and the result written to
    Rd.</p>
  </slide>
  <commentary>
    <p>Although it&rsquo;s a register, we show the <CPSR> separately on the
    diagram to indicate that it may be used in both the barrel shifter and the
    ALU stages.</p>
  </commentary>
  </content>
  <footer>
</page>

