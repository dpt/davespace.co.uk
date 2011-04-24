<* $Id$ *>

<page heading="Memory Access" rev="datatypes" cur="memaccess" fwd="localvar">
  <header>
  <sidebar>
  <content>
  <slide>
  <p><ARM> is a <dfn>load-store</dfn> architecture:</p>
    <ul>
      <li>Data must be loaded into registers from memory before it can be
      operated upon.</li>
      <li>No instructions directly manipulate memory values.</li>
    </ul>
    <p>Prior to <ARMv4>, <ARM> had no native support for loading halfwords and
    signed bytes.</p>
    <ul>
      <li>So <code>char</code> is unsigned by default on <ARM>.</li>
    </ul>
  </slide>
  <slide title="Memory Instructions Throughout the Ages">
    <p>Not all of the memory access instructions available in the current <ARM>
    <ISA> were present in the original <ARM>. Newer instructions, such as those
    for processing half-words, have had to be squeezed into later
    architectures. Limits on the amount of instruction space available meant
    that they could not be made as flexible as the original instructions.</p>
    <table id="cores">
    <tbody>
      <tr>
        <th>Architecture</th>
        <th>Instruction</th>
        <th>Action</th>
      </tr>

      <tr>
        <td rowspan="4">Pre-<ARMv4></td>
        <td><code>LDRB</code></td>
        <td>load unsigned 8-bit</td>
      </tr>

      <tr>
        <td><code>STRB</code></td>
        <td>store signed or unsigned 8-bit</td>
      </tr>

      <tr>
        <td><code>LDR</code></td>
        <td>load signed or unsigned 32-bit</td>
      </tr>

      <tr>
        <td><code>STR</code></td>
        <td>store signed or unsigned 32-bit</td>
      </tr>

      <tr>
        <td rowspan="4"><ARMv4></td>
        <td><code>LDRSB</code></td>
        <td>load signed 8-bit</td>
      </tr>

      <tr>
        <td><code>LDRH</code></td>
        <td>load unsigned 16-bit</td>
      </tr>

      <tr>
        <td><code>LDRSH</code></td>
        <td>load signed 16-bit</td>
      </tr>

      <tr>
        <td><code>STRH</code></td>
        <td>store signed or unsigned 16-bit</td>
      </tr>

      <tr>
        <td rowspan="2"><ARMv5></td>
        <td><code>LDRD</code></td>
        <td>load signed or unsigned 64-bit</td>
      </tr>

      <tr>
        <td><code>STRD</code></td>
        <td>store signed or unsigned 64-bit</td>
      </tr>

    </tbody>
    </table>

    <p>You may get better performance by using <code>LDR</code> to process
    packed pairs of half-words instead of <code>LDRH</code>, for example.</p>
  </slide>
  <commentary>
  <p><ARMv4> introduced signed and halfword memory access types.</p>
    <p><ARMv5> introduced double-word accesses.</p>
    <ul>
      <li><code>LDRD</code> and <code>STRD</code> require addresses aligned to
      an 8-byte boundary.</li>
    </ul>
    <p><ARM> coding guru Robin Watts says <q>"Using the newer types, such as
    half-word/<code>short</code>, is intrinsically less efficient on <ARM>s.
    Array indexing of <code>short</code>s costs one more cycle than
    <code>int</code>s."</q></p>
  </commentary>
  </content>
  <footer>
</page>

