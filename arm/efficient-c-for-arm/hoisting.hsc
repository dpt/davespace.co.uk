<* $Id$ *>

<page heading="Hoisting" rev="padding" cur="hoisting" fwd="datadrive">
  <nav>
  <heading>
  <slide>
  <p>Constant expressions inside a loop can be <dfn>hoisted</dfn> to outside of
  the loop.</p>
  <ul>
    <li>That way the code costs just once, rather than on every loop
    iteration.</li>
    <li>Keeps code out of the way &ndash; denser code.</li>
  </ul>
  </slide>
  <examples>
    <before>
      <p>Doing the same test repeatedly in a loop:</p>
<csyntax>txt-&gt;flags |= METRICS; /* for example */

for (i = 0; i &lt; N; i++)
{
  if (txt-&gt;flags &amp; TRANSLATE)
    translate(i);
  else if (txt-&gt;flags &amp; METRICS)
    get_metrics(i);
  else
    draw(i);
}</csyntax>
    </before>
    <after>
      <p>We hoist out the loop:</p>
<csyntax>if (txt-&gt;flags &amp; TRANSLATE)
{
  for (i = 0; i &lt; N; i++)
    translate(i);
}
else if (txt-&gt;flags &amp; METRICS)
{
  for (i = 0; i &lt; N; i++)
    get_metrics(i);
}
else
{
  for (i = 0; i &lt; N; i++)
    draw(i);
}</csyntax>
    </after>
  </examples>
  <commentary>
  <p>
    <a class="external" href="http://www.compileroptimizations.com/category/hoisting.htm">http://www.compileroptimizations.com/category/hoisting.htm</a>
  </p>
  </commentary>
  <footer>
  </heading>
</page>

