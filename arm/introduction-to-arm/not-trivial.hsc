<* $Id$ *>

<page heading="Not a Trivial Mapping" rev="why-learn" cur="not-trivial" fwd="instruction-sets">
  <nav>
  <heading>

  <slide>
    <p>There are features available to the assembler programmer which
    don&rsquo;t map onto C:</p>
    <dl>
      <dt>Processor flags</dt>
      <dd>&ndash; the carry flag.</dd>
      <dt>Vector operations</dt>
      <dd>&ndash; <acronym title="Single Instruction Multiple Data">SIMD</acronym> instructions.</dd>
      <dt>Bulk transfers</dt>
      <dd>&ndash; multiple-register loads and stores.</dd>
      <dt>Specialised operations</dt>
      <dd>&ndash; population count.</dd>
      <dt>Atomic test-and-set instructions</dt>
      <dd>&ndash; mutexes.</dd>
      <dt>Other on-chip hardware</dt>
      <dd>&ndash; <acronym title="Multiply-Accumulate">MAC</acronym> units.</dd>
    </dl>

    <p>The benefits of these features may be lost if plain, or na&iuml;ve, C
    code is used.</p>
  </slide>

  <commentary>
    <p>
      SIMD = Single Instruction Multiple Data.<br/>
      MAC = Multiply Accumulate.
    </p>
    <p>
      C compilers aren&rsquo;t capable of producing every operation which a CPU
      can perform. Many compilers have <dfn>intrinsics</dfn>, which look like
      functions but emit the desired operations into the instruction stream.
      But no language can provide complete coverage for every CPU.
    </p>
    <p>
      The compiler is likely to be a more consistent assembly language
      programmer than you. You must weigh up the pros and cons of using it.
      It&rsquo;s not worth wasting time on assembly language code which the
      compiler could have produced.
    </p>
    <p>
      The <a class="external"
        href="http://en.wikipedia.org/wiki/Pareto_principle">80-20 rule</a>:
      80% of the time is spent executing 20% of the program.  Concentrate on
      the 20%. It&rsquo;s a rule of thumb.
    </p>
  </commentary>

  <footer>
  </heading>
</page>
