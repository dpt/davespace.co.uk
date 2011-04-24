<* $Id$ *>

<page heading="Taking a Variable&rsquo;s Address" rev="funcarg" cur="varaddr" fwd="loops">
  <header>
  <sidebar>
  <content>
  <slide>
<csyntax>int N;

getlimit(&amp;N);
for (i = 0; i &lt; N; i++)
  ...</csyntax>
    <p>Taking the address of a variable means that it must live in memory.</p>
    <ul>
      <li>The variable is then subject to pointer aliasing.</li>
      <li>Heavy use of the variable will be costly.</li>
    </ul>
    <p>Solution:</p>
    <ul>
      <li>Make a second, non-memory-bound, copy of the variable for intensive
      use.</li>
    </ul>
  </slide>
  <commentary>
    <p>When you take the address of a variable it is then memory-bound for its
    lifetime. So even if, as in this example, you only take the address once
    then use it later it&rsquo;s still a memory-bound variable.</p>
  </commentary>
  </content>
  <footer>
</page>

