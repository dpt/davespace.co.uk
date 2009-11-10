<* $Id$ *>

<page heading="Instruction Sets" rev="not-trivial" cur="instruction-sets" fwd="registers">
  <nav>
  <heading>
  <slide>
    <p>Modern ARM processors have <em>four</em> instruction sets:
    <ul>
      <li>The fully-featured 32-bit <acronym title="Advanced RISC Machine">ARM</acronym> instruction set,</li>
      <li>The more restricted, but space efficient, 16-bit <dfn>Thumb</dfn> instruction set,</li>
      <li>The newer mixed 16/32-bit <dfn>Thumb-2</dfn>,</li>
      <li>and <dfn><a href="http://en.wikipedia.org/wiki/Jazelle">Jazelle <abbr
      title="Direct Bytecode eXecution">DBX</abbr></a></dfn> for Java byte
      codes.</li>
    </ul></p>
    <p>For the purposes of this course we are just interested in the ARM and
    Thumb instruction sets.</p>
  </slide>
  <commentary>
    <p>We haven't even mentioned the various floating point and SIMD
    coprocessors, such as <dfn>VFP</dfn> and <dfn>NEON</dfn> respectively.</p>
    <p>Thumb instructions are a 16-bit compressed form of the most commonly
    used ARM instructions. Instructions are (can be) dynamically decompressed
    in the instruction pipeline. Thumb increases code density (commonly by 25%)
    at the cost of reduced execution speed.</p>
    <p>Java bytecodes are 8-bit instructions designed to be
    architecture-independent. Jazelle DBX transparently executes most bytecodes
    in hardware and some in highly optimised ARM code. This is due to a
    trade-off between hardware complexity (power consumption and silicon area)
    and speed.</p>
    <p>Thumb-2 is the progression of Thumb (strictly it is Thumb v3). It
    improves performance whilst keeping the code density tight by allowing a
    mixture of 16- and 32-bit instructions.</p>
    <p>Mixing ARM and Thumb code is called &ldquo;interworking&rdquo;.</p>
  </commentary>
  <footer>
  </heading>
</page>

