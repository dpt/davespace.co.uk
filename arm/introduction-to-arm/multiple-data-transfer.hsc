<* $Id$ *>

<page heading="Multiple Register Data Transfer" rev="addressing" cur="multiple-data-transfer" fwd="stack">
  <header>
  <sidebar>
  <content>
  <slide>
    <format>&lt;operation&gt;{cond}&lt;mode&gt; Rn{!}, &lt;reglist&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>LDM</code></dt>
      <dd>reglist := values at Rn</dd>
      <dt><code>STM</code></dt>
      <dd>values at Rn := reglist</dd>
    </dl>
    <p><var>&lt;mode&gt;</var> controls how Rn is incremented:</p>
    <dl class="columns">
      <dt><code>&lt;op&gt;IA</code></dt><dd>Increment after.</dd>
      <dt><code>&lt;op&gt;IB</code></dt><dd>Increment before.</dd>
      <dt><code>&lt;op&gt;DA</code></dt><dd>Decrement after.</dd>
      <dt><code>&lt;op&gt;DB</code></dt><dd>Decrement before.</dd>
    </dl>
    <p><var>&lt;reglist&gt;</var> is the list of registers to load or store. It
    can be a comma-separated list or an Rx-Ry style range.</p>
  </slide>
  <examples>
    <dl>
      <dt><code>LDMIA r0, {r3,r7}</code></dt>
      <dd>Load words addressed by R0 into R3 and R7.<br />
          Increment After each load.</dd>
      <dt><code>LDMIA r0, {r3-r7}</code></dt>
      <dd>Load words addressed by R0 into R3, R4, R5, R6 and R7.<br />
          Increment After each load.</dd>
      <dt><code>STMDB r1!, {r6-r8}</code></dt>
      <dd>Store R6,R7,R8 into words addressed by R1.<br />
          Write back the final address into R1.<br />
          Decrement Before each store.</dd>
    </dl>
  </examples>
  </content>
  <footer>
</page>

