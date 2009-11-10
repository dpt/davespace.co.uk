<* $Id$ *>

<page heading="C Data Types" rev="unrolling" cur="datatypes" fwd="memaccess">
  <nav>
  <heading>
  <slide>
    <p>Certain C data types are more efficient to use for local variables than
    others.</p>
    <p>ARM has 32-bit wide registers and 32-bit data processing
    instructions.</p>
    <p>Therefore the natural machine word type, <code>int</code>, is
    32-bit.</p>

    <table id="cores">
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
  <commentary>
  </commentary>
  <footer>
  </heading>
</page>

