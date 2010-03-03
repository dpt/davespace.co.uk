<* $Id$ *>

<page heading="Program Counter" rev="registers" cur="pc" fwd="syntax">
  <header>
  <sidebar>
  <content>
  <article>
    <ul>
    <li>When in <ARM> mode:
      <ul>
        <li>Instructions are 32 bits wide.</li>
        <li>All instructions must be word-aligned.</li>
        <li>The <PC> is in bits [31:2] and bits [1:0] are undefined.</li>
      </ul>
    </li>
    <li>When in Thumb mode:
      <ul>
        <li>Instructions are 16 bits wide.</li>
        <li>All instructions must be halfword-aligned.</li>
        <li>The <PC> is in bits [31:1] and bit 0 is undefined.</li>
      </ul>
    </li>
    </ul>
  </article>
  <commentary>
  <p>R15 is the <PC>.</p>
  <p>&ldquo;word&rdquo; and &ldquo;half-word&rdquo; mean 4-byte and 2-byte
  quantities respectively.</p>
  <p>It&rsquo;s not mentioned on the slide, but when in Jazelle state:
    <ul>
      <li>instructions are 8 bits wide</li>
      <li>four are fetched at a time</li>
    </ul>
  </p>
  </commentary>
  </content>
  <footer>
</page>

