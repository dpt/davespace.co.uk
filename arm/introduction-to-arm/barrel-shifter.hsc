<* $Id$ *>

<page heading="Barrel Shifter" rev="compare" cur="barrel-shifter" fwd="operand2">
  <header>
  <sidebar>
  <content>
  <article>
    <p>The <dfn>barrel shifter</dfn> is a functional unit which can be used in
    a number of different circumstances. It provides five types of shifts and
    rotates which can be applied to Operand2. (These are not operations
    themselves in <ARM> mode.)</p>
  <table id="barrelshifts">
    <tr>
      <td>
        <h4><code>LSL</code> <ndash> Logical Shift Left<br/></h4>
        <diagram src="barrel-lsl.png" alt="LSL">
        e.g. multiplication by a power of 2.<br />
        Equivalent to <code>&lt;&lt;</code> in C.
      </td>
      <td>
        <h4><code>LSR</code> <ndash> Logical Shift Right<br/></h4>
        <diagram src="barrel-lsr.png" alt="LSR">
        e.g. unsigned division by a power of 2.<br />
        Equivalent to <code>&gt;&gt;</code> in C.
      </td>
      </tr>
      <tr>
        <td colspan="2">
          <h4><code>ASR</code> <ndash> Arithmetic Shift Right<br/></h4>
          <diagram src="barrel-asr0.png" alt="ASR +ve">
          <diagram src="barrel-asr1.png" alt="ASR -ve">
          e.g. signed division by a power of 2.<br />
          Equivalent to <code>&gt;&gt;</code> in C.<a href="#implementationdefined">&dagger;</a>
        </td>
      </tr>
      <tr>
        <td>
          <h4><code>ROR</code> <ndash> Rotate Right<br/></h4>
          <diagram src="barrel-ror.png" alt="ROR">
          Bit rotate with wrap-around.
        </td>
        <td>
          <h4><code>RRX</code> <ndash> Rotate Right Extended<br/></h4>
          <diagram src="barrel-rrx.png" alt="RRX">
          Bit rotate with wrap-around including carry bit.
        </td>
      </tr>
    </table>
  </article>
  <examples>
    <dl>
      <dt><code>MOV r0, r0, LSL #1</code></dt>
      <dd>Multiply R0 by two.</dd>
      <dt><code>MOV r1, r1, LSR #2</code></dt>
      <dd>Divide R1 by four (unsigned).</dd>
      <dt><code>MOV r2, r2, ASR #2</code></dt>
      <dd>Divide R2 by four (signed).</dd>
      <dt><code>MOV r3, r3, ROR #16</code></dt>
      <dd>Swap the top and bottom halves of R3.</dd>
      <dt><code>ADD r4, r4, r4, LSL #4</code></dt>
      <dd>Multiply R4 by 17. (N = N + N * 16)</dd>
      <dt><code>RSB r5, r5, r5, LSL #5</code></dt>
      <dd>Multiply R5 by 31. (N = N * 32 - N)</dd>
    </dl>
  </examples>
  <commentary>
    <p>At the start I mentioned that certain C operations don&rsquo;t map onto
    available <CPU> operations. <code>ROR</code> and <code>RRX</code> are two
    of those operations.</p>
    <p>Certain <ARM> instructions such as <code>MUL</code>, <code>CLZ</code>
    and <code>QADD</code> cannot use the barrel shifter.</p>
    <p id="implementationdefined">&dagger; Note that right shifting negative
    signed quantities is strictly <dfn>implementation defined</dfn> behaviour
    in C. The compiler is allowed to choose whether it performs a logical or an
    arithmetic shift. (That said, it&rsquo;s always implemented as an
    arithmetic shift in all of the <ARM> toolchains the author has used.)</p>
  </commentary>
  </content>
  <footer>
</page>

