<* $Id$ *>

<page heading="Not a Trivial Mapping" rev="why-learn" cur="not-trivial" fwd="instruction-sets">
  <nav>
  <heading>

  <slide>
    <p>There are often features in the CPU which don&rsquo;t always map onto
    C:</p>
    <ul>
      <li>Processor flags &ndash; e.g. the carry flag.</li>
      <li>Vector instructions &ndash; <acronym title="Single Instruction Multiple Data">SIMD</acronym> operations.</li>
      <li>Multiple-register transfers &ndash; bulk data loads/stores.</li>
      <li>Specialised operations &ndash; population count.</li>
      <li>Atomic test-and-set instructions &ndash; mutexes.</li>
      <li>On-chip hardware &ndash; <acronym
      title="Multiply-Accumulate">MAC</acronym> units.</li>
    </ul>

    <p>These benefits may be lost if plain, or na&iuml;ve, C code is used.</p>
  </slide>

  <commentary>
    <p>
      SIMD = Single Instruction Multiple Data.<br/>
      MAC = Multiply Accumulate.
    </p>
    <p>
      C compilers aren&rsquo;t capable of producing every operation which a
      compiler can perform. Many compilers have intrinsics, which emit the
      desired operations into the instruction stream, but no language will
      provide complete coverage for every CPU.
    </p>
    <p>
      The compiler is probably a more consistent assembly language programmer
      than you. You have to weigh up the pros and cons of using it. It&rsquo;s
      not worth wasting time on assembly language code which the compiler could
      have produced.
    </p>
    <p>
      The 80-20 rule: 80% of the time is spent executing 20% of the program.
      Concentrate on the 20%. It&rsquo;s a rule of thumb.
    </p>
  </commentary>

  <footer>
  </heading>
</page>

