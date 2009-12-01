<* $Id$ *>

<page heading="Instruction Sets" rev="not-trivial" cur="instruction-sets" fwd="registers">
  <nav>
  <heading>
  <slide>
  <p>Modern <ARM> processors have <em>several</em> instruction sets:
    <ul>
      <li>The fully-featured 32-bit <ARM> instruction set,</li>
      <li>The more restricted, but space efficient, 16-bit <dfn>Thumb</dfn> instruction set,</li>
      <li>The newer mixed 16/32-bit <dfn>Thumb-2</dfn> instruction set,</li>
      <li><dfn>Jazelle <DBX></dfn> for Java byte codes,</li>
      <li>The <dfn>NEON</dfn> 64/128-bit <SIMD> instruction set,</li>
      <li>The <dfn><VFP></dfn> vector floating point instruction set.</li>
    </ul></p>
    <p>For the purposes of this course we are only interested in the <ARM> and
    Thumb instruction sets.</p>
  </slide>
  <commentary>
    <p>Thumb instructions are a 16-bit compressed form of the most commonly
    used <ARM> instructions. Instructions are (can be) dynamically decompressed
    in the instruction pipeline. Thumb increases code density (commonly by 25%)
    at the cost of reduced execution speed.</p>
    <p>Java bytecodes are 8-bit instructions designed to be
    architecture-independent. <wiki subj="Jazelle">Jazelle</wiki> <DBX>
    transparently executes most bytecodes in hardware and some in highly
    optimised <ARM> code. This is due to a trade-off between hardware
    complexity (power consumption and silicon area) and speed.</p>
    <p>Thumb-2 is the progression of Thumb (strictly it is Thumb v3). It
    improves performance whilst keeping the code density tight by allowing a
    mixture of 16- and 32-bit instructions.</p>
  </commentary>
  <footer>
  </heading>
</page>

