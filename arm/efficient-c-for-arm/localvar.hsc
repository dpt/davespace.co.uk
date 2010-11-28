<* $Id$ *>

<page heading="Local Variable Types" rev="memaccess" cur="localvar" fwd="funcarg">
  <header>
  <sidebar>
  <content>
  <article>
    <p>The <ARM> data processing operations always operate on 32-bit
    quantities. You should therefore:</p>
    <ul>
      <li>Use a 32-bit data type (e.g. <code>int</code>) for local
      variables.</li>
      <li>Avoid <code>char</code> and <code>short</code> for local variables,
      even if you&rsquo;re manipulating a <code>char</code> or
      <code>short</code> value.</li>
    </ul>
    <p>The exception to this is when you require wrap-around or modulo
    arithmetic (e.g. 255+1 = 0).</p>
  </article>
  <examples>
    <p>This example code calculates a simple checksum on a packet of 64
    words:</p>
<csyntax>int checksum1(const int *data)
{
  char i;
  int  sum = 0;

  for (i = 0; i &lt; 64; i++)
    sum += data[i];

  return sum;
}</csyntax>

    <p>Let&rsquo;s look at the annotated compiler output:</p>

<armsyntax>checksum1
        MOV     r2,r0             ; R2 = data
        MOV     r0,#0             ; sum = 0
        MOV     r1,#0             ; i = 0
loop
        LDR     r3,[r2,r1,LSL #2] ; R3 = data[i]
        ADD     r1,r1,#1          ; R1 = i+1
        AND     r1,r1,#0xff       ; i = (char)R1   *** UNNECESSARY ***
        CMP     r1,#0x40          ; compare i to 64
        ADD     r0,r3,r0          ; sum += R3
        BCC     loop              ; if (i&lt;64) loop
        MOV     pc,r14            ; return sum</armsyntax>

    <p>The compiler is emitting an <code>AND r1,r1,#0xff</code> instruction
    even though it <em>should</em> know that <var>i</var> never exceeds 64. If
    we change <var>i</var> from <code>char</code> to <code>unsigned int</code>
    the <code>AND</code> disappears: it&rsquo;s no longer necessary to account
    for wrap-around.</p>
    <p>Remember that this isn&rsquo;t just a saving of one instruction or
    cycle. It saves <strong>64 instructions</strong>: <em>one for each
      iteration</em>.</p>
    <p>This is an <dfn>inner loop</dfn>. Optimisations to inner loops are
    highly beneficial.</p>
  </examples>
  <commentary>
    <p>You might think <code>char</code> is an efficient choice for
    <var>i</var>; using less stack space or register space than an
    <code>int</code> might. On the <ARM>, this is wrong:</p>
    <ul>
      <li>Stack entries are at least 32 bits wide.</li>
      <li>Registers are 32 bits wide.</li>
    </ul>
    <p>To compute the modification of <var>i</var> correctly the compiler must
    account for the case where <var>i</var> will wrap around which you get for
    &lsquo;free&rsquo; with <code>int</code>s, but not with
    <code>char</code>s.</p>
  </commentary>
  </content>
  <footer>
</page>

