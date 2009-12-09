<* $Id$ *>

<page heading="Pointer Aliasing" rev="indexing" cur="aliasing" fwd="chains">
  <nav>
  <heading>
  <slide>
    <dl>
      <dt>Pointers <dfn>alias</dfn> when they point to the same address.</dt>
      <ddd>Writing via one pointer will change the value read through
      another.</dd>
    </dl>
    <dl>
      <dt>The compiler often doesn&rsquo;t know which pointers alias.</dt>
      <ddd>The compiler must assume that <strong>any</strong> write
      through a pointer may affect the value read from
      <strong>any</strong> another pointer!</dd>
      <ddd>This can significantly reduce code efficiency.</dd>
    </dl>
  </slide>
  <examples>
    <before>
      <csyntax>void timers1(int *t1, int *t2, int *step)
{
  *t1 += *step;
  *t2 += *step;
}</csyntax>
<armsyntax>timers1 LDR r3,[r0]   ; R3 = *t1
        LDR r12,[r2]  ; R12 = *step
        ADD r3,r3,r12 ; R3 += R12
        STR r3,[r0]   ; *t1 = R3
        LDR r0,[r1]   ; R0 = *t2
        LDR r2,[r2]   ; R2 = *step  *** step loaded again
        ADD r0,r0,r2  ; R0 += R2
        STR r0,[r1]   ; *t2 = R0
        MOV pc,r14</armsyntax>
      <p>You&rsquo;d expect <code>*step</code> to be pulled from memory once
      and used twice. That does not happen.</p>
    </before>
    <after>
      <p>Once rewritten to cache <code>*step</code> in a local variable, the
      redundant load is eliminated:</p>
      <csyntax>void timers2(int *t1, int *t2, int *step)
{
  int s = *step;
  *t1 += s;
  *t2 += s;
}</csyntax>
<armsyntax>
timers2 LDR r2,[r2]  ; R2 = *step
        LDR r3,[r0]  ; R3 = *t1
        ADD r3,r3,r2 ; R3 += R2
        STR r3,[r0]  ; *t1 = R3
        LDR r0,[r1]  ; R0 = *t2
        ADD r0,r0,r2 ; R0 += R2
        STR r0,[r1]  ; *t2 = R0
        MOV pc,r14</armsyntax>
    </after>
  </examples>
  <commentary>
    <p>C99&rsquo;s <code>restrict</code> qualifier goes some way towards
    mitigating the effects of pointer aliasing. <a class="external"
    href="http://cellperformance.beyond3d.com/articles/2006/06/understanding-strict-aliasing.html">Understanding
    strict aliasing.</a></p>
    <p>This is from section 5.6 of <a href="references.html#asdg">ARM System
      Developer&rsquo;s Guide</a>.</p>
  </commentary>
  <footer>
  </heading>
</page>

