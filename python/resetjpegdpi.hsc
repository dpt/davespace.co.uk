<* $Id$ *>

<page heading="resetjpegdpi.py" cur="resetjpegdpi">
  <header>
  <sidebar>
  <content>

  <downloadbox>
    <download href="../software/resetjpegdpi.py">Download</download>
  </downloadbox>

  <article>
    <p>Even if you run your JPEGs through <tt>jpegtran -optimise</tt> then
    sometimes they can differ in the initial header bytes. This small Python
    script resets the version, units and density fields of a (directory of)
    JPEGs. Once its run then <a
      href="remove-duplicates.html">remove-duplicates.py</a> will have a better
    chance of eliminating the duplicate images.</p>
  </article>

  <article title="Example">
    <p>To recursively process all JPEGs within a directory:</p>
    <pre class="console">$ <kbd>resetjpegdpi.py ./photos/</kbd></pre>
  </article>

  </content>
  <footer>
</page>

