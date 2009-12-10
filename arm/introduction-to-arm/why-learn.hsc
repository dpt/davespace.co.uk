<* $Id$ *>

<page heading="Why Learn Assembly?" rev="index" cur="why-learn" fwd="not-trivial">
  <nav>
  <heading>
  <slide>
    <ul>
      <li>Ideally we would never need to write assembly language.</li>
      <ul>
        <lid>Because it requires more effort to code than <HLL>s like C.</li>
      </ul>
      <li>But C is an abstraction: The code that you write is <em>not</em> what
      the <CPU> really executes.</li>
      <li>Sometimes compilers aren&rsquo;t very good. They may produce
      unnecessary extra code which we call <dfn>slop</dfn>. Slop increases
      size and decreases speed.</li>
      <li>To dispense with the slop we need to instruct the machine in its
      native language.</li>
    </ul>
  </slide>
  <commentary>
    <p>Our goal is to write small, efficient programs to run on our target
    platforms. We can&rsquo;t always assume that compilers will make all the
    right choices. They make decisions on our behalf which we don&rsquo;t get
    to know about.  We need to understand <em>what</em> the compiler is doing
    and <em>why</em> it&rsquo;s doing things in a particular way.</p>
    <p>The C code you write is <em>not</em> the instructions which the <CPU>
    executes. It&rsquo;s an abstraction which insulates you from the weaknesses
    and the strengths of the machine. We tend to forget this.</p>
    <p>Also... It&rsquo;s useful for knowing where you are when debugging at
    the low level. It&rsquo;s useful because compilers aren&rsquo;t infallible
    and can <em>sometimes</em> generate incorrect code. (We encountered a tool
    chain at Picsel which thought that N&times;10==N). Also knowledge of
    assembly language can help you understand the semantics of the compiler
    language more fully.</p>
  </commentary>
  <footer>
  </heading>
</page>

