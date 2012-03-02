<* $Id$ *>

<page heading="rerename.py" cur="rerename">

  <downloadbox>
    <download><a href="../software/rerename.py">Download</a></download>
  </downloadbox>

  <article>
    <p>rerename.py is a small Python script to bulk rename files and
    directories using <a href="http://www.regular-expressions.info/">regular
      expressions</a>.</p>
  </article>

  <article title="Example">
    <p>It's always best to try out a rename operation before doing it for real
    with <tt>-p</tt> to get a preview of what will happen:</p>
    <pre class="console">$ <kbd>rerename.py -p '(.*).html' '\1.xhtml' .</kbd>
index.html -&gt; index.xhtml
remove-duplicates.html -&gt; remove-duplicates.xhtml
rerename.html -&gt; rerename.xhtml
resetjpegdpi.html -&gt; resetjpegdpi.xhtml</pre>
    <p>If you<rq>re happy with that then you can run it for real without
    <tt>-p</tt>:</p>
    <pre class="console">$ <kbd>rerename.py '(.*).html' '\1.xhtml' .</kbd>
index.html -&gt; index.xhtml
remove-duplicates.html -&gt; remove-duplicates.xhtml
rerename.html -&gt; rerename.xhtml
resetjpegdpi.html -&gt; resetjpegdpi.xhtml
3 objects renamed</pre>
  </article>

</page>

