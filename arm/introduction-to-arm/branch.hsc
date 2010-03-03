<* $Id$ *>

<page heading="Branch Instructions" rev="immediates" cur="branch" fwd="conditional">
  <header>
  <sidebar>
  <content>
  <article>
    <format>&lt;operation&gt;{cond} &lt;address&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>B</code> <dfn>branch</dfn></dt>
      <dd>PC := &lt;address&gt;</dd>
      <dt><code>BL</code> <dfn>branch with link</dfn></dt>
      <dd>R14 := address of next instruction, PC := &lt;address&gt;</dd>
    </dl>
    <p>How do we return from the subroutine which <code>BL</code> invoked?</p>
    <p><code>MOV pc, r14</code></p>
    <p>or</p>
    <p><code>BX r14</code> (on <ARMv4T> or later)</p>
  </article>
  <examples>
    <p>Branching forward, to skip over some code:</p>
<armsyntax>    ...
    B fwd        ; jump to label 'fwd'
    ...          ; more code here
fwd</armsyntax>
    <p>Branching backwards, creating a loop:</p>
<armsyntax>back
    ...          ; more code here
    B back       ; jump to label 'back'</armsyntax>
    <p>Using BL to call a subroutine:
<armsyntax>    ...
    ...
    BL  calc     ; call 'calc'
    ...          ; returns to here
    ...

calc             ; function body
    ADD r0,r1,r2 ; do some work here
    MOV pc, r14  ; PC = R14 to return</armsyntax></p>
  </examples>
  <commentary>
    <p>So how do we implement control structures like <tt>for</tt> and
    <tt>while</tt> loops etc?</p>
    <p>Branch instructions are used to alter control flow.</p>
    <p>They are <PC> relative. +/-32M range (24 bits &times; 4 bytes).</p>
    <p>Use to allow position independent code. It allows restricted branch
    range to jump to nearby addresses. This solves some problems with <BREW>.</p>
    <p>How to perform longer branches? How to access full 32-bit address space?
    You can set up the <LR> manually if needed, then load into <PC>: <code>MOV
      lr,pc LDR pc,=dest</code></p>
    <p>The linker will automatically generate long branch veneers for branches
    beyond 32M range.</p>
  </commentary>
  </content>
  <footer>
</page>

