<* $Id$ *>

<page heading="Addressing Modes" rev="data-transfer" cur="addressing" fwd="multiple-data-transfer">
  <nav>
  <heading>
  <slide>
    <p>An <code>&lt;address&gt;</code> can take multiple forms:</p>
    <dl>
      <dt>An address expression:</dt>
      <dd><code>&lt;expression&gt;</code></dd>
      <dt>A pre-indexed address:</dt>
      <dd><code>[Rn, &lt;expression&gt;]{!}</code></dd>
      <dd><code>[Rn, {-}Rm]{!}</code></dd>
      <dd><code>[Rn, {-}Rm &lt;shift&gt; count]{!}</code></dd>
      <dt>A post-indexed address:</dt>
      <dd><code>[Rn], &lt;expression&gt;</code></dd>
      <dd><code>[Rn], {-}Rm</code></dd>
      <dd><code>[Rn], {-}Rm &lt;shift&gt; count</code></dd>
    </dl>
    <p>Where <var>shift</var> is any of <code>LSL</code>, <code>LSR</code>,
    <code>ASR</code>, <code>ROR</code> or <code>RRX</code>.</p>
    <p>Writeback <code>{!}</code> causes the final address generated to be
    written back into <var>Rn</var>.</p>
  </slide>
  <commentary>
    <p>A pseudo instruction: the assembler generates a PC-relative
    <code>LDR</code> or <code>STR</code>. FIXME WHAT?</p>
    <p>For halfword and signed halfword/byte instructions, the offset is
    restricted and can be:
      <ul>
        <li>an unsigned 8-bit immediate value</li>
        <li>an unshifted register</li>
      </ul>
    </p>
  </commentary>
  <examples>
    <dl>
      <dt><code>LDR r0,[r1]</code></dt>
      <dd>Load word addressed by R1 into R0.</dd>
      <dt><code>LDRB r0,[r1]</code></dt>
      <dd>The same as above but loads a byte.</dd>
      <dt><code>LDR r0,[r1,#4]</code></dt>
      <dd>Load word addressed by R1+4.</dd>
      <dt><code>STR r0,[r1],#4</code></dt>
      <dd>Store R0 to word addressed by R1. Increment R1 by 4.</dd>
      <dt><code>LDR r0,[r1,#4]!</code></dt>
      <dd>Load word addressed by R1+4. Increment R1 by 4.</dd>
      <dt><code>LDRLS pc,[r1,r0,LSL #2]</code></dt>
      <dd>Jump table idiom.</dd>
    </dl>
  </examples>
  <footer>
  </heading>
</page>

