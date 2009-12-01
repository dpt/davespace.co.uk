<* $Id$ *>

<page heading="Memory Access" rev="datatypes" cur="memaccess" fwd="localvar">
  <nav>
  <heading>
  <slide>
  <p><ARM> is a load-store architecture:</p>
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
  <slide title="Memory Instructions Through The Ages">
    <p>Since not all memory access instructions were present in the original
    <ARM> <ISA>, they have had to be &lsquo;shoehorned&rsquo; in later on. This
    means that they are subject to greater restrictions than the original
    instructions.</p>
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

    <p>You could get better performance by using <code>LDR</code> over
    <code>LDRH</code> for example.</p>
  </slide>
  <commentary>
  <p><ARMv4> introduced signed and halfword memory access types.</p>
    <p><ARMv5> introduced double-word accesses.</p>
    <ul>
      <li><code>LDRD</code> and <code>STRD</code> require addresses aligned to
      an 8-byte boundary.</li>
    </ul>
    <p>(Robin Watts says) "Using the newer types, such as half-word/short, is
    intrinsically less efficient on <ARM>s. Array indexing of shorts costs one
    more cycle than ints."</p>
  </commentary>
  <footer>
  </heading>
</page>

