<* $Id$ *>

<page heading="Conditional Execution" rev="branch" cur="conditional" fwd="multiply">
  <nav>
  <heading>
  <slide>
    <p>A beneficial feature of the ARM architecture is that every instruction
    can be made to execute conditionally. This is common in other
    architectures&rsquo; branch or jump instructions, but ARM allows its use in
    most instructions.</p>
    <p>If the condition is not met the instruction is treated as a no-op.</p>
    <p>This feature often removes the need to branch, avoiding pipeline stalls
    and increasing speed. It also increases code density.</p>
    <p>Condition codes are set using compare instructions or using an
    ALU instruction with the &ldquo;S&rdquo; bit set.</p>
    <p>By adding a two-letter suffix to the mnemonic, ARM instructions can be
    made to execute <em>conditionally</em>.</p>
  </slide>
  <commentary>
    <p>However, certain newer instructions can't be conditionally executed,
    e.g. <code>PLD</code> or <code>BLX</code>. These are encoded using the
    obsolete 'NV' (never execute) condition code.</p>
    <p>By default, data processing instructions do not affect the condition
    code flags but can be made to by suffixing . The comparison instructions
    <code>CMP</code>, <code>TST</code>, <code>TEQ</code>, etc. do this
    implicitly.</p>
    <armsyntax>loop
	...
	SUBS  r1, r1, #1
	BNE   loop</armsyntax>
    <p>The &ldquo;S&rdquo; bit is implicit in compare instructions.</p>
    <p>Can combine &ldquo;S&rdquo; bit with conditional execution, e.g.
    <code>ADDEQS r0, r1, r2.</code></p>
    <p>Data processing instructions won&rsquo;t affect the flags unless you
    specify the &ldquo;S&rdquo; bit.</p>
    <p>Only ARMCC outputs assembly language which properly uses conditional
    execution.</p>
  </commentary>
  <slide title="Condition Code Flags">
    <diagram src="nzcv.png" alt="NZCV" width="495" height="191">
    <p>Where an ALU operation changes the flags:</p>
    <dl>
      <dt>N &ndash; Negative</dt>
      <dd>Set if the result of a data processing instruction was negative.</dd>
      <dt>Z &ndash; Zero</dt>
      <dd>Set if the result was zero.</dd>
      <dt>C &ndash; Carry</dt>
      <dd>Set if an addition, subtraction or compare causes a result bigger
      than 32 bits, or is set from the output of the shifter for move and
      logical instructions.</dd>
      <dt>V &ndash; Overflow</dt>
      <dd>Set if an addition, subtraction or compare produces a signed result
      bigger than 31 bits.</dd>
    </dl>
  </slide>
  <commentary>
    <p>There is also...</p>
    <ul>
      <li>Q: introduced with ARMv5E.</li>
    </ul>
    <p>This bit is sticky and is set when one of the Q instructions saturates.</p>
  </commentary>
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
    code, it was more useful to recover the 2<sup>24</sup> instructions it used
    up.</p>
  </commentary>
  <examples>
<armsyntax>    CMP   r3, #0
    BEQ   next
    ADD   r0, r0, r1
    SUB   r0, r0, r2
next
    ...</armsyntax>
      <p>Can become...</p>
<armsyntax>    CMP   r3, #0
    ADDNE r0, r0, r1
    SUBNE r0, r0, r2
    ...</armsyntax>
  </examples>
  <commentary>
    <p>By transforming the sequence like this an instruction can be removed by
    using conditional execution.</p>
    <p>The only compiler which makes extensive use of condition codes is ARMCC.
    It applies them in an optimisation pass called branch removal.</p>
  </commentary>
  <examples>
    <p>Use a sequence of several conditional instructions:</p>
    <armsyntax>    CMP   r0, #5   ; if (a == 5)
    MOVEQ r0, #10  ;
    BLEQ  fn       ;   fn(10)</armsyntax>
    <p>Set the flags, then use various condition codes:</p>
    <armsyntax>    CMP   r0, #0   ; if (x &lt; 0)
    MOVLE r0, #0   ;   x = 0;
    MOVGT r0, #1   ; else x = 1;</armsyntax>
    <p>Use conditional compare instructions:</p>
    <armsyntax>    CMP   r0, #'A' ; if (c == 'A'
    CMPNE r0, #'B' ;  || c == 'B')
    MOVEQ r1, #1   ;   y = 1;</armsyntax>
  </examples>
  <commentary>
    <p>Assume <var>a</var> is in R0. Compare R0 to 5. The next two instructions
    will be executed only if the compare returns EQual. They move 10 into R0,
    then call &lsquo;fn&rsquo; (branch with link, <code>BL</code>).</p>
    <p>When is it worth branching over condition codes? Depends on the
    CPU&rsquo;s branch penalty, but it&rsquo;s often 4..6 instructions.</p>
  </commentary>
  <footer>
  </heading>
</page>

