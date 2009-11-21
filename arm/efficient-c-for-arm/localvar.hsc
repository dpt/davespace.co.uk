<* $Id$ *>

<page heading="Local Variable Types" rev="memaccess" cur="localvar" fwd="funcarg">
  <nav>
  <heading>
  <slide>
    <p>ARM data processing are 32-bit.</p>
    <ul>
      <li>Use a 32-bit data type for local variables.</li>
      <li>Avoid <code>char</code> and <code>short</code> as local variable
      types, even if you&rsquo;re manipulating a <code>char</code> or
      <code>short</code> value.</li>
    </ul>
    <p>The exception to this is when you require wrap-around or modulo
    arithmetic (e.g. 255+1 = 0).</p>
  </slide>
  <examples>
<csyntax>int checksum1(const int *data)
{
  char i;
  int  sum = 0;

  for (i = 0; i &lt; 64; i++)
    sum += data[i];

  return sum;
}</csyntax>

<armsyntax>checksum1
        MOV     r2,r0             ; r2 = data
        MOV     r0,#0             ; sum = 0
        MOV     r1,#0             ; i = 0
loop
        LDR     r3,[r2,r1,LSL #2] ; r3 = data[i]
        ADD     r1,r1,#1          ; r1 = i+1
        AND     r1,r1,#0xff       ; i = (char)r1   *** UNNECESSARY ***
        CMP     r1,#0x40          ; compare i, 64
        ADD     r0,r3,r0          ; sum += r3
        BCC     loop              ; if (i&lt;64) loop
        MOV     pc,r14            ; return sum</armsyntax>
  </examples>
  <commentary>
    <p>The example code checksums a packet of 64 words.</p>
    <p>You might think <code>char</code> is an efficient choice for
    <var>i</var>; using less stack space or register space than an
    <code>int</code> might.</p>
    <p>On the ARM, this is wrong:</p>
    <ul>
      <li>Stack entries are at least 32 bits wide.</li>
      <li>Registers are 32 bits wide.</li>
    </ul>
    <p>To compute the modification of <var>i</var> correctly the compiler must
    account for the case where <var>i</var> will wrap around which you get for
    &lsquo;free&rsquo; with <code>int</code>s, but not with
    <code>char</code>s.</p>

    <p>Let&rsquo;s look at the annotated compiler output.</p>
    <p>The compiler is emitting an <code>AND</code> instruction even though it
    <em>should</em> know that <var>i</var> never exceeds 63.</p>
    <p>When we change <var>i</var> from <code>char</code> to <code>unsigned
    int</code> the <code>AND</code> disappears.</p>
    <p>It&rsquo;s no longer necessary to account for wrap-around.</p>
    <p>Remember that this isn&rsquo;t just a saving of one instruction or
    cycle. It saves 64 instructions: <em>one for each iteration</em>.</p>
    <p>This is an <dfn>inner loop</dfn>. Optimisations to inner loops are
    highly beneficial.</p>
  </commentary>
  <footer>
  </heading>
</page>
