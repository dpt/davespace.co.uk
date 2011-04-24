<* $Id$ *>

<page heading="Conditional Execution" rev="branch" cur="conditional" fwd="multiply">
  <header>
  <sidebar>
  <content>
  <slide>
    <p>A beneficial feature of the <ARM> architecture is that instructions can
    be made to execute <em>conditionally</em>. This is common in other
    architectures&rsquo; branch or jump instructions but <ARM> allows its use
    with most mnemonics.</p>
    <p>The condition is specified with a two-letter suffix, such as
    <code>EQ</code> or <code>CC</code>, appended to the mnemonic. The condition
    is tested against the current processor flags and if not met the
    instruction is treated as a no-op.</p>
    <p>This feature often removes the need to branch, avoiding pipeline stalls
    and increasing speed. It can also increase code density.</p>
    <p>By default the data processing instructions do not affect the condition
    code flags but can be made to by suffixing <code>S</code>. The comparison
    instructions <code>CMP</code>, <code>TST</code>, and co.
    do this implicitly.</p>
  </slide>
  <examples>
    <p>The following code fragment is a loop which runs until the counter in R1
    hits zero, at which point the condition code <code>NE</code> (not equal to
    zero) controlling the branch becomes false.</p>
    <armsyntax>	MOV   r1, #10
loop
	...
	SUBS  r1, r1, #1
	BNE   loop</armsyntax>
  </examples>
  <slide title="Flags">
    <diagram src="nzcv.png" alt="NZCV">
    <p>When an <ALU> operation changes the flags:</p>
    <dl>
      <dt>N <ndash> Negative</dt>
      <dd>is set if the result of a data processing instruction was negative.</dd>
      <dt>Z <ndash> Zero</dt>
      <dd>is set if the result was zero.</dd>
      <dt>C <ndash> Carry</dt>
      <dd>is set if an addition, subtraction or compare causes a result bigger
      than 32 bits, or is set from the output of the shifter for move and
      logical instructions.</dd>
      <dt>V <ndash> Overflow</dt>
      <dd>is set if an addition, subtraction or compare produces a signed result
      bigger than 31 bits.</dd>
    </dl>
  </slide>
  <slide title="Condition Codes">
    <table id="cores">
      <thead>
        <tr><th>Code</th><th>Suffix</th><th>Description</th><th>Flags</th></tr>
      </thead>
      <tbody>
        <tr><td>0000</td><td><code>EQ</code></td>     <td>Equal / equals zero</td>                <td>Z</td>       </tr>
        <tr><td>0001</td><td><code>NE</code></td>     <td>Not equal</td>                          <td>!Z</td>      </tr>
        <tr><td>0010</td><td><code>CS / HS</code></td><td>Carry set / unsigned higher or same</td><td>C</td>       </tr>
        <tr><td>0011</td><td><code>CC / LO</code></td><td>Carry clear / unsigned lower</td>       <td>!C</td>      </tr>
        <tr><td>0100</td><td><code>MI</code></td>     <td>Minus / negative</td>                   <td>N</td>       </tr>
        <tr><td>0101</td><td><code>PL</code></td>     <td>Plus / positive or zero</td>            <td>!N</td>      </tr>
        <tr><td>0110</td><td><code>VS</code></td>     <td>Overflow</td>                           <td>V</td>       </tr>
        <tr><td>0111</td><td><code>VC</code></td>     <td>No overflow</td>                        <td>!V</td>      </tr>
        <tr><td>1000</td><td><code>HI</code></td>     <td>Unsigned higher</td>                    <td>C and !Z</td></tr>
        <tr><td>1001</td><td><code>LS</code></td>     <td>Unsigned lower or same</td>             <td>!C or Z</td> </tr>
        <tr><td>1010</td><td><code>GE</code></td>     <td>Signed greater than or equal</td>       <td>N == V</td>  </tr>
        <tr><td>1011</td><td><code>LT</code></td>     <td>Signed less than</td>                   <td>N != V</td>  </tr>
        <tr><td>1100</td><td><code>GT</code></td>     <td>Signed greater than</td>                <td>!Z &amp;&amp; (N == V)</td></tr>
        <tr><td>1111</td><td><code>LE</code></td>     <td>Signed less than or equal</td>          <td>Z || (N != V)         </td></tr>
        <tr><td>1110</td><td><code>AL</code></td>     <td>Always (default)</td>                   <td>any</td>     </tr>
      </tbody>
    </table>
  </slide>
  <commentary>
    <p>The (omitted from slide) <code>NV</code> condition code is deprecated.
    Though it originally provided an analogue for the <code>AL</code> condition
    code, it was more useful to recover the 2<sup>24</sup> instructions its
    presence consumed.</p>
  </commentary>
  <examples>
    <p>Use a sequence of several conditional instructions:</p>
    <armsyntax>    CMP   r0, #5   ; if (a == 5)
    MOVEQ r0, #10  ;
    BLEQ  fn       ;   fn(10)</armsyntax>
    <p>(Assume <var>a</var> is in R0. Compare R0 to 5. The next two
    instructions will be executed only if the compare returns EQual. They move
    10 into R0, then call &lsquo;fn&rsquo; (branch with link,
    <code>BL</code>).)</p>
    <p>Set the flags, then use various condition codes:</p>
    <armsyntax>    CMP   r0, #0   ; if (x &lt; 0)
    MOVLE r0, #0   ;   x = 0;
    MOVGT r0, #1   ; else x = 1;</armsyntax>
    <p>Use conditional compare instructions:</p>
    <armsyntax>    CMP   r0, #'A' ; if (c == 'A'
    CMPNE r0, #'B' ;  || c == 'B')
    MOVEQ r1, #1   ;   y = 1;</armsyntax>
    <before>
      <p>A sequence which doesn&rsquo;t use conditional execution:</p>
<armsyntax>    CMP   r3, #0
    BEQ   next
    ADD   r0, r0, r1
    SUB   r0, r0, r2
next
...</armsyntax>
    </before>
    <after>
      <p>By transforming the sequence with conditional execution an instruction
      can be removed:</p>
<armsyntax>    CMP   r3, #0
    ADDNE r0, r0, r1
    SUBNE r0, r0, r2
    ...</armsyntax>
    </after>
  </examples>
  <commentary>
    <p>Some of the newer instructions such as <code>PLD</code> or
    <code>BLX</code> <strong>can&rsquo;t</strong> be conditionally executed.
    These are encoded using the instruction space occupied by the now-obsolete
    <code>NV</code> (never execute) condition code.</p>
    <p>It&rsquo;s possible to combine the <code>S</code> bit with conditional
    execution, e.g.  <code>ADDEQS r0, r1, r2.</code></p>
    <p>The only compiler which makes extensive use of condition codes is
    <ARMCC>.  It applies them in an optimisation pass called <dfn>branch
    removal</dfn>.</p>
    <p>When is it worth branching over condition codes? Depends on the
    <CPU>&rsquo;s branch penalty, but it&rsquo;s often 4..6 instructions.</p>
  </commentary>
  </content>
  <footer>
</page>

