<* $Id$ *>

<page heading="Barrel Shifter" rev="compare" cur="barrel-shifter" fwd="operand2">
  <nav>
  <heading>
  <slide>
    <p>The <dfn>barrel shifter</dfn> is a functional unit which can be used in
    a number of different circumstances. (These are not operations themselves
    in <ARM> mode.)</p>
  <table id="barrelshifts">
    <tr>
      <td>
        <h4><code>LSL</code> &ndash; Logical Shift Left<br/></h4>
        <diagram src="barrel-lsl.png" alt="LSL" width="157" height="118">
        e.g. multiplication by a power of 2.<br />
        Equivalent to <code>&lt;&lt;</code> in C.
      </td>
      <td>
        <h4><code>LSR</code> &ndash; Logical Shift Right<br/></h4>
        <diagram src="barrel-lsr.png" alt="LSR" width="159" height="118">
        e.g. division by a power of 2.<br />
        Equivalent to <code>&gt;&gt;</code> in C.
      </td>
      </tr>
      <tr>
        <td colspan="2">
          <h4><code>ASR</code> &ndash; Arithmetic Shift Right<br/></h4>
          <diagram src="barrel-asr0.png" alt="ASR +ve" width="159" height="118">
          <diagram src="barrel-asr1.png" alt="ASR -ve" width="159" height="118">
          e.g. signed division by a power of 2.<br />
          Equivalent to <code>&gt;&gt;</code> in C.<a href="#implementationdefined">&dagger;</a>
        </td>
      </tr>
      <tr>
        <td>
          <h4><code>ROR</code> &ndash; Rotate Right<br/></h4>
          <diagram src="barrel-ror.png" alt="ROR" width="180" height="118">
          Bit rotate with wrap-around.
        </td>
        <td>
          <h4><code>RRX</code> &ndash; Rotate Right Extended<br/></h4>
          <diagram src="barrel-rrx.png" alt="RRX" width="191" height="118">
          Bit rotate with wrap-around including carry bit.
        </td>
      </tr>
    </table>
  </slide>
  <commentary>
    <p>Here&rsquo;s how we implement the C shift operations in <ARM>. Note that
    these are unsigned operators. If we want to perform a shift which preserves
    the sign of a value, we need to use <code>ASR</code>.</p>
    <p>At the start I mentioned that certain C operations don&rsquo;t map onto
    available <CPU> operations. <code>ROR</code> and <code>RRX</code> are a
    couple of those operations.</p>
    <p>Certain <ARM> instructions such as <code>MUL</code>, <code>CLZ</code>
    and <code>QADD</code> cannot use the barrel shifter.</p>
    <p id="implementationdefined">&dagger; Note that right shifting negative
    signed quantities is strictly <dfn>implementation defined</dfn> behaviour
    in C. The compiler is allowed to choose whether it performs a logical or an
    arithmetic shift. (That said, it&rsquo;s always an arithmetic shift in all
    of the <ARM> toolchains the author has used.)</p>
  </commentary>
  <footer>
  </heading>
</page>

