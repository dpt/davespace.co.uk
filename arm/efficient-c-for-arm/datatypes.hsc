<* $Id$ *>

<page heading="C Data Types" rev="unrolling" cur="datatypes" fwd="memaccess">
  <slide>
    <p>Certain C data types are more efficient to use for local variables than
    others.</p>
    <ul>
      <li><ARM> has 32-bit wide registers and 32-bit data processing
      instructions.</li>
    </ul>
    <p>Therefore the machine&rsquo;s natural word type, <code>int</code>, is
    32-bit.</p>

    <table id="cores" summary="C data types' physical sizes.">
    <tbody>

      <tr>
        <th>C Data Type</th>
        <th>Implementation</th>
      </tr>

      <tr>
        <td><code>char</code></td>
        <td>unsigned 8-bit byte</td>
      </tr>

      <tr>
        <td><code>short</code></td>
        <td>signed 16-bit halfword</td>
      </tr>

      <tr>
        <td><code>int</code></td>
        <td>signed 32-bit word</td>
      </tr>

      <tr>
        <td><code>long</code></td>
        <td>signed 32-bit word</td>
      </tr>

      <tr>
        <td><code>long long</code></td>
        <td>signed 64-bit double word</td>
      </tr>

    </tbody>
    </table>

  </slide>
</page>

