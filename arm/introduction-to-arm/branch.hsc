<* $Id$ *>

<page heading="Branch Instructions" rev="immediates" cur="branch" fwd="conditional">
  <header>
  <sidebar>
  <content>
  <slide>
    <p>So how do we implement control structures like <tt>for</tt> and
    <tt>while</tt> loops? <dfn>Branch</dfn> instructions are used to alter
    control flow.</p>
    <format>&lt;operation&gt;{cond} &lt;address&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>B</code> <ndash> <dfn>branch</dfn></dt>
      <dd>PC := &lt;address&gt;</dd>
      <dt><code>BL</code> <ndash> <dfn>branch with link</dfn></dt>
      <dd>R14 := address of next instruction, PC := &lt;address&gt;</dd>
    </dl>
    <p>How do we return from the subroutine which <code>BL</code> invoked?</p>
    <p><code>MOV pc, r14</code></p>
    <p>or</p>
    <p><code>BX r14</code> (on <ARMv4T> or later)</p>
  </slide>
  <examples>
    <p>Branching forward, to skip over some code:</p>
<armsyntax>    ...          ; some code here
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
    <p>Branches are <PC> relative. +/-32M range (24 bits &times; 4 bytes).</p>
    <p>Since <ARM>&rsquo;s branch instructions are <PC> relative the code
    produced is <dfn>position independent</dfn> <mdash> it can execute from any
    address in memory. Certain systems such as <BREW> use this.</p>
    <p>How can we perform longer branches which access the full 32-bit address
    space?  You can set up the <LR> manually if needed, then load into <PC>:
    <code>MOV lr,pc LDR pc,=dest</code></p>
  </commentary>
  </content>
  <footer>
</page>

