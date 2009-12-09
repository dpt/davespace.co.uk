<* $Id$ *>

<page heading="Single Register Data Transfer" rev="multiply" cur="data-transfer" fwd="addressing">
  <nav>
  <heading>
  <slide>
    <format>&lt;operation&gt;{cond}{size} Rd, &lt;address&gt;</format>
    <p><var>&lt;operation&gt;</var></p>
    <dl>
      <dt><code>LDR</code></dt>
      <dd>Rd := value at &lt;address&gt;</dd>
      <dt><code>STR</code></dt>
      <dd>value at &lt;address&gt; := Rd</dd>
    </dl>
    <p><var>{size}</var> is specified to transfer bytes or half-words:</p>
    <dl>
      <dt><code>&lt;operation&gt;B</code></dt>
      <dd><dfn>unsigned byte</dfn></dd>
      <dt><code>&lt;operation&gt;SB</code></dt>
      <dd><dfn>signed byte</dfn></dd>
      <dt><code>&lt;operation&gt;H</code></dt>
      <dd><dfn>unsigned half-word</dfn></dd>
      <dt><code>&lt;operation&gt;SH</code></dt>
      <dd><dfn>signed half-word</dfn></dd>
    </dl>
  </slide>
  <examples>
    <dl>
      <dt><code>LDR r0,[r1]</code></dt>
      <dd>Load word addressed by R1 into R0.</dd>
      <dt><code>LDRB r0,[r1]</code></dt>
      <dd>The same as above but loads a byte.</dd>
    </dl>
  </examples>
  <commentary>
    <p>The instructions for accessing half-words were a later addition to the
    instruction set so have some restrictions (described on the next page).</p>
    <p><code>SB</code> and <code>SH</code> modes are not available with
    <code>STR</code>.</p>
  </commentary>
  <slide title="Alignment Restrictions">
    <p>In general, values loaded from or stored to memory must be aligned to
    the size of the data type:</p>
    <ul>
      <li>32-bit words must be 4-byte aligned.</li>
      <li>16-bit half-words must be 2-byte aligned.</li>
      <li>Bytes <ndash> no restriction.</li>
    </ul>
    <p>This restriction was relaxed in <ARMv6>.</p>
  </slide>
  <commentary>
    <p>Values can only be loaded from, or stored to, memory at a multiple of
    that type size. For example, a half-word can only be loaded from even
    addresses. (<code>double</code>s are an exception and can live on 4-byte
    boundaries in some architecture versions).</p>
  </commentary>
  <footer>
  </heading>
</page>

