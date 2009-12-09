<* $Id$ *>

<page heading="Padding" rev="bools" cur="padding" fwd="hoisting">
  <nav>
  <heading>
  <slide>
    <p>Structures often end up containing <dfn>padding</dfn>.</p>
    <dl>
      <dt>Required because of target&rsquo;s data type restrictions.</dt>
      <ddd>e.g. <ARM> keeps <code>int</code>s on a 32-bit boundary.</dd>
    </dl>
    <p>Easy to waste memory if you&rsquo;re not aware of where padding is
    inserted.</p>
    <p>Solution:</p>
    <ul>
      <li>Sort elements in the structure by size:</li>
      <ul>
        <lid>Place elements in small-to-large or large-to-small order.</li>
        <lid>This minimises the amount of padding.</li>
      </ul>
    </ul>
    <p>The compiler cannot perform this transformation itself as the C standard
    guarantees that structure members will be laid out in the order that
    they&rsquo;re specified.</p>
  </slide>
  <examples>
    <before>
      <p>Consider the structure:</p>
<csyntax>struct
{
  unsigned char type;
  int           product;
  short         delta;
}</csyntax>
      <p>It is laid out in memory like this:</p>
      <diagram src="padding1.png" alt="Structure layout in memory - before." width="189" height="95">
    </before>
    <after>
      <p>If we sort the structure members by size:</p>
<csyntax>struct
{
  int           product;
  short         delta;
  unsigned char type;
}</csyntax>

      <diagram src="padding2.png" alt="Structure layout in memory - before." width="189" height="67">

      <p>The padding can be removed and the structure reduces by four bytes (a
    third).</p>
    </after>
  </examples>
  <footer>
  </heading>
</page>

