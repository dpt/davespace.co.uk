<* $Id$ *>

<page heading="Interworking" rev="thumb" cur="interworking" fwd="thumb-example">
  <nav>
  <heading>
  <slide>
    <p>You can mix and match <ARM> and Thumb code within the same binary. This
    is called <dfn>interworking</dfn> and it lets you take advantage of the
    strengths of each type of code.</p>

    <p>For example:</p>
    <ul>
      <li>The bulk of the code could be written in Thumb, to keep the overall
      binary size down.</li>
      <li>Performance critical parts could be written in <ARM>, for speed.</li>
    </ul>

    <p>The &lsquo;T&rsquo; bit in the <CPSR> register signals Thumb mode.</p>

    <ul>
      <li>Switch between modes with <code>BX Rm</code>.</li>
      <li>Special form of branch instruction.</li>
      <li>Bottom bit of Rm becomes the T bit.</li>
    </ul>

    <p><ARMv5T> and later architectures add:</p>
    <ul>
      <li><code>BLX &lt;Rm|label&gt;</code></li>
      <li>and other changes which make interworking much more pleasant.</li>
    </ul>
  </slide>
  <footer>
  </heading>
</page>

