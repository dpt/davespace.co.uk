<* $Id$ *>

<page heading="Addressing Modes" rev="data-transfer" cur="addressing" fwd="multiple-data-transfer">
  <slide>
    <p>An <var>&lt;address&gt;</var> can take multiple forms:</p>
    <dl>
      <dt>An address expression:</dt>
      <dd><var>&lt;expression&gt;</var></dd>
      <dt>A <dfn>pre-indexed</dfn> address <ndash> where the address generated
      is immediately:</dt>
      <dd><code>[Rn, <var>&lt;expression&gt;</var>]{!}</code></dd>
      <dd><code>[Rn, {-}Rm]{!}</code></dd>
      <dd><code>[Rn, {-}Rm <var>&lt;shift&gt;</var> count]{!}</code></dd>
      <dt>A <dfn>post-indexed</dfn> address <ndash> where the address generated
      later replaces the base register:</dt>
      <dd><code>[Rn], <var>&lt;expression&gt;</var></code></dd>
      <dd><code>[Rn], {-}Rm</code></dd>
      <dd><code>[Rn], {-}Rm <var>&lt;shift&gt;</var> count</code></dd>
    </dl>
    <p>Where <var>&lt;shift&gt;</var> is any of <code>LSL</code>,
    <code>LSR</code>, <code>ASR</code>, <code>ROR</code> or <code>RRX</code> as
    described <a href="barrel-shifter.html">earlier</a>.</p>
    <p>Pre-indexed <dfn>writeback</dfn> denoted by <code>{!}</code> causes the
    final address generated to be written back into <var>Rn</var>.</p>
  </slide>
  <examples>
    <dl>
      <dt><code>LDR r0,[r1,#4]</code></dt>
      <dd>Load word addressed by R1+4.</dd>
      <dt><code>STR r0,[r1],#4</code></dt>
      <dd>Store R0 to word addressed by R1. Increment R1 by 4.</dd>
      <dt><code>LDR r0,[r1,#4]!</code></dt>
      <dd>Load word addressed by R1+4. Increment R1 by 4.</dd>
      <dt><code>LDRLS pc,[r1,r0,LSL #2]</code></dt>
      <dd>Jump table idiom: load routine address into PC from R1 + R0 * 4.</dd>
    </dl>
  </examples>
  <commentary>
    <p>The <var>&lt;address&gt;</var> form is a pseudo instruction: the
    assembler generates a <PC>-relative <code>LDR</code> or
    <code>STR</code>.</p>
    <p>For halfword and signed halfword/byte instructions, which were later
    additions to the instruction set, the offset is restricted and can be:
      <ul>
        <li>an unsigned 8-bit immediate value, or</li>
        <li>an unshifted register.</li>
      </ul>
    </p>
  </commentary>
</page>

