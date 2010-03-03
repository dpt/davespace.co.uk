<* $Id$ *>

<page heading="Task One Answers">
  <header>
  <sidebar>
  <content>
  <article>
  <p>The routine turns an <ASCII> character lower-case. In C it would be
  written like this:</p>
  <csyntax>int mystery(int c)
{
  unsigned int t;

  t = c - 'A';
  if (t &lt;= 'Z' - 'A')
    c += 'a' - 'A';

  return c;
}</csyntax>
  <p>The tricky thing here is the coercion to <code>unsigned int</code> which
  allows us to replace two comparisons with a single one. This trick, the
  <dfn>unsigned range optimisation</dfn>, is <a
    href="../efficient-c-for-arm/unsignedrange.html">discussed</a> in the <a
    href="../efficient-c-for-arm/index.html">Efficient C for ARM</a>
  course.</p>
  <p>We can write it in a more expected way like this:</p>
  <csyntax>int mystery2(int c)
{
  if (c &gt;= 'A' &amp;&amp; c &lt;= 'Z')
     c += 'a' - 'A';

  return c;
}
</csyntax>
  </article>
  </content>
  <footer>
</page>

