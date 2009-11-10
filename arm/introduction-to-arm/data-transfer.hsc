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
      <dt><code>&lt;op&gt;B</code> <dfn>unsigned byte</dfn></dt>
      <dt><code>&lt;op&gt;SB</code> <dfn>signed byte</dfn></dt>
      <dt><code>&lt;op&gt;H</code> <dfn>unsigned half-word</dfn></dt>
      <dt><code>&lt;op&gt;SH</code> <dfn>signed half-word</dfn></dt>
    </dl>
  </slide>
  <commentary>
    <p>Half-word accesses were a later addition to the instruction set so have
    some restrictions.</p>
    <p><code>SB</code> and <code>SH</code> modes are not available in
    <code>STR</code>.</p>
  </commentary>
  <examples>
    FIXME WRITE SOME EXAMPLES
  </examples>
  <slide title="Alignment Restrictions">
    <p>In general, values loaded from or stored to memory must be aligned to
    the size of the data type:</p>
    <ul>
      <li>32-bit words must be 4-byte aligned.</li>
      <li>16-bit half-words must be 2-byte aligned.</li>
      <li>Bytes &ndash; no restriction.</li>
    </ul>
    <p>This restriction was relaxed in v6.</p>
  </slide>
  <commentary>
    <p>Values can only be loaded from, or stored to, memory at a multiple of
    that type size. For example, a half-word can only be loaded from even
    addresses. (Doubles are an exception and can live on 4-byte boundaries in
    some architecture versions).</p>
  </commentary>
  <footer>
  </heading>
</page>

