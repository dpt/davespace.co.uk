<* $Id$ *>

<page heading="Barrel Shifter" rev="compare" cur="barrel-shifter" fwd="operand2">
  <nav>
  <heading>
  <slide>
    <p>The <dfn>barrel shifter</dfn> is a functional unit which can be used in
    a number of different circumstances. (These are not operations themselves
    in ARM mode.)</p>
  <table id="barrelshifts">
    <tr>
      <td>
        <h4><code>LSL</code><br/>Logical Shift Left<br/></h4>
        <diagram src="barrel-lsl.png" alt="LSL" width="157" height="118">
        e.g. multiplication by a power of 2. Equivalent to <code>&lt;&lt;</code> in C.
      </td>
      <td>
        <h4><code>LSR</code><br/>Logical Shift Right<br/></h4>
        CONVERT THIS TO USE DIAGRAM MACRO
        <a href="img/dia/lg/barrel-lsr.png"><img src="img/dia/barrel-lsr.png" alt="LSR" /></a><br/>
        e.g. division by a power of 2. Equivalent to <code>&gt;&gt;</code> in C.
      </td>
      </tr>
      <tr>
        <td colspan="2">
          <h4><code>ASR</code><br/>Arithmetic Shift Right<br/></h4>
          <a href="img/dia/lg/barrel-asr0.png"><img src="img/dia/barrel-asr0.png" alt="ASR +ve" /></a>
          <a href="img/dia/lg/barrel-asr1.png"><img src="img/dia/barrel-asr1.png" alt="ASR -ve" /></a><br/>
          e.g. signed division by a power of 2. Equivalent to <code>&gt;&gt;</code> in C.
        </td>
      </tr>
      <tr>
        <td>
          <h4><code>ROR</code><br/>Rotate Right<br/></h4>
          <a href="img/dia/lg/barrel-ror.png"><img src="img/dia/barrel-ror.png" alt="ROR" /><br/></a>
          Bit rotate with wrap-around.
        </td>
        <td>
          <h4><code>RRX</code><br/>Rotate Right Extended<br/></h4>
          <a href="img/dia/lg/barrel-rrx.png"><img src="img/dia/barrel-rrx.png" alt="RRX" /><br/></a>
          Bit rotate with wrap-around including carry bit.
        </td>
      </tr>
    </table>
  </slide>
  <commentary>
    <p>Here&rsquo;s how we implement the C shift operations in ARM. Note that
    these are unsigned operators. If we want to perform a shift which preserves
    the sign of a value, we need to use <code>ASR</code>.</p>
    <p>At the start I mentioned that certain C operations don&rsquo;t map onto
    available CPU operations. <code>ROR</code> and <code>RRX</code> are a
    couple of those operations.</p>
    <p>Certain ARM instructions such as <code>MUL</code>, <code>CLZ</code> and
    <code>QADD</code> cannot use the barrel shifter.</p>
  </commentary>
  <footer>
  </heading>
</page>

