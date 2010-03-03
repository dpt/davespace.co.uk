<* $Id$ *>

<page heading="remove-duplicates.py" cur="remove-duplicates">
  <header>
  <sidebar>
  <content>

  <downloadbox>
    <download href="../software/remove-duplicates.py">Download</download>
  </downloadbox>

  <article>
    <p>remove-duplicates.py is a small Python script which deletes files with
    the same size and MD5 checksum.</p>
    <p>It recursively processes the specified directory and its
    sub-directories. If you want to preserve certain files, you need to ensure
    that they<rq>re last in the directory list.</p>
  </article>

  <article title="Example">
    <p>To recursively remove all duplicate files from the current
    directory:</p>
    <pre class="console">$ <kbd>remove-duplicates.py ./photos/</kbd></pre>
  </article>

  </content>
  <footer>
</page>

