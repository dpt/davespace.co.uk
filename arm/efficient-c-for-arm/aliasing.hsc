<* $Id$ *>

<page heading="Pointer Aliasing" rev="indexing" cur="aliasing" fwd="chains">
  <nav>
  <heading>
  <slide>
    <p>Pointers <dfn>alias</dfn> when they point to the same address.</p>
    <p>Writing through one pointer changes the value read through the
    other.</p>

    <p>In a function, the compiler often doesn&rsquo;t know which pointers
    alias.</p> REWRITE?

    <p>The compiler must be pessimistic and assume that any write through a
    pointer may affect the value read from any another pointer! This can
    significantly reduce code efficiency.</p>
  </slide>
  <examples>
  <csyntax>void timers1(int *t1, int *t2, int *step)
{
  *t1 += *step;
  *t2 += *step;
}</csyntax> REWRITE
<armsyntax>timers1 LDR r3,[r0]   ; r3 = *t1
        LDR r12,[r2]  ; r12 = *step
        ADD r3,r3,r12 ; r3 += r12
        STR r3,[r0]   ; *t1 = r3
        LDR r0,[r1]   ; r0 = *t2
        LDR r2,[r2]   ; r2 = *step
        ADD r0,r0,r2  ; r0 += r2
        STR r0,[r1]   ; *t2 = r0
        MOV pc,r14</armsyntax>
    <p>You'd expect <code>*step</code> to be pulled from memory once and used
    twice. <strong>That does not happen.</strong></p>
  <csyntax>void timers2(int *t1, int *t2, int *step)
{
  int s = *step;
  *t1 += s;
  *t2 += s;
}</csyntax> REWRITE
<armsyntax>timers2 ... ; FILL ME IN
        MOV pc,r14</armsyntax>
  </examples>
  <commentary>
  <p>This is from section 5.6 of <a href="references.html">ARM System
    Developer&rsquo;s Guide.</a></p>
  </commentary>
  <footer>
  </heading>
</page>

