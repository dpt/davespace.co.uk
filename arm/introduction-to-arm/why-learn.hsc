<* $Id$ *>

<page heading="Why Learn Assembly?" rev="index" cur="why-learn" fwd="not-trivial">
  <nav>
  <heading>
  <slide>
    <ul>
      <li>
      Ideally we would never need to write assembly language because it requires
      more effort to code than <abbr title="High Level Languages">HLLs</abbr>
      like C.
      </li>
      <li>
      But C is an abstraction: The code that you write is <em>not</em> what the
      <abbr title="Central Processing Unit">CPU</abbr> really executes.
      </li>
      <li>
      Sometimes compilers aren't very good. They may produce unnecessary extra
      code which we call <dfn>slop</dfn>.  Slop increases size and decreases
      speed.
      </li>
      <li>
      To dispense with the slop we need to instruct the machine in its native
      language.
      </li>
    </ul>
  </slide>
  <commentary>
    <p>Our goal is to write small, efficient programs to run on our target
    platforms. We can't always assume that compilers will make all the right
    choices. They make decisions on our behalf which we don't get to know
    about.  We need to understand <em>what</em> the compiler is doing and
    <em>why</em> it's doing things in a particular way.</p>
    <p>The C code you write is <em>not</em> the instructions which CPU
    executes.  It's an abstraction which insulates you from the weaknesses and
    the strengths of the machine. We tend to forget this.</p>
    <p>Also... It's useful for knowing where you are when debugging at the low
    level.  It's useful because compilers aren't infallible and can
    <em>sometimes</em> generate incorrect code. (Recall the EZX tool chain
    which thought that N*10==N). Also knowledge of assembly language can help
    you understand the semantics of the compiler language more fully.</p>
  </commentary>
  <footer>
  </heading>
</page>

