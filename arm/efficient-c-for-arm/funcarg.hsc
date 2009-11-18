<* $Id$ *>

<page heading="Function Argument Types" rev="localvar" cur="funcarg" fwd="varaddr">
  <nav>
  <heading>
  <slide>
  <csyntax>short addshorts1(short a, short b)
{
  return (short) (a + (b &gt;&gt; 1));
}</csyntax>
  <ul>
    <li>The same rule holds for arguments to functions.</li>
    <li>In this example, input and output values are both <code>short</code>.
    <ul>
      <li>Yet the values will be passed in (and out) in 32-bit-wide
      registers.</li>
    </ul>
    </li>
  </ul>
  <ul>
    <li>Should the compiler assume values are already in the range of a
    <code>short</code>?</li>
    <li>Or should the compiler force the values to this range by sign-extending
    the low 16 bits to fill the 32-bit register?</li>
  </ul>
  <ul>
    <li>The compiler must make a compatible decision for both the caller and
    the callee.</li>
  </ul>
  </slide>
  <examples>
    <p>For the above example, ARMCC generates:</p>
  <armsyntax>addshorts1
  ADD r0,r0,r1,ASR #1  ; r0 = (int)a + ((int)b&gt;&gt;1)
  MOV r0,r0,LSL #16
  MOV r0,r0,ASR #16    ; r0 = (short)r0
  MOV pc,r14           ; return r0</armsyntax>
    <ul>
      <li>It assumes input values are in the correct range.</li>
    </ul>
    <p>GCC generates:</p>
<armsyntax>addshorts1
  MOV r0,r0,LSL #16
  MOV r1,r1,LSL #16
  MOV r1,r1,ASR #17    ; r1 = (int)a
  ADD r1,r1,r0,ASR #16 ; r1 += (int)b
  MOV r1,r1,LSL #16
  MOV r0,r1,ASR #16    ; r0 = (short)r1
  MOV pc,lr            ; return r0</armsyntax>
    <ul>
    <li>It makes no assumptions about the range of argument values and forcibly
    sign extends the values on entry.</li>
    </ul>
  </examples>
  <commentary>
    <p>This is from <a href="references.html#asdg">ARM System Developer&rsquo;s
      Guide</a> section 5.2.2.</p>
    <ul>
      <li>This sort of behaviour differs from toolchain to toolchain.</li>
      <li>It makes it hard to mix objects reliably between compilers.</li>
    </ul>
    <p>The <code>LSL #16</code> + <code>ASR #16</code> is a sign extending
    operation.</p>
    <p>ARMCC passes narrow arguments and return value. GCC passes wide but
    returns narrow.</p>
    <p>You can see from this that simply mixing objects between different
    compilers can cause all sorts of problems.</p>
  </commentary>
  <footer>
  </heading>
</page>

