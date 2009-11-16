<* $Id$ *>

<page heading="Padding" rev="bools" cur="padding" fwd="hoisting">
  <nav>
  <heading>
  <slide>
    <p>Structures are <dfn>padded</dfn>.</p>
    <ul>
      <li>Because of host&rsquo;s data type restrictions.</li>
      <li>e.g. ARM keeps ints on a 32-bit boundary.</li>
    </ul>
    <p>Easy to waste memory if not careful.</p>
    <p>Solution:</p>
    <ul>
      <li>Sort elements in the structure by size:</li>
      <ul>
        <li>Small-to-large or large-to-small.</li>
        <li>This minimises the amount of padding.</li>
      </ul>
    </ul>
    <p>The compiler cannot perform this transformation itself as the C standard
    guarantees that structure members will be laid out in the order that
    they're specified.</p>
  </slide>
  <slide title="Minimising Structure Padding">
<csyntax>struct
{
  unsigned char type;
  int           product;
  short         delta;
}</csyntax>

DIAGRAM

<csyntax>struct
{
  int           product;
  short         delta;
  unsigned char type;
}</csyntax>

DIAGRAM

    <p>Structure has been reduced by four bytes (a third).</p>
  </slide>
  <footer>
  </heading>
</page>

