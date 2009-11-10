<* $Id$ *>

<page heading="Instruction Syntax" rev="pc" cur="syntax" fwd="organisation">
  <nav>
  <heading>
  <slide>
  <format>&lt;op&gt;{cond}{flags} Rd, Rn, Operand2</format>
  <dl class="columns">
    <dt><code>&lt;op&gt;</code></dt>
    <dd>A three-letter mnemonic, e.g. <code>MOV</code> or <code>ADD</code>.</dd>
    <dt><code>{cond}</code></dt>
    <dd>An optional two-letter condition code, e.g. <code>EQ</code> or <code>CS</code>.</dd>
    <dt><code>{flags}</code></dt>
    <dd>An optional additional flags.</dd>
    <dt><code>Rd</code></dt>
    <dd>The destination register.</dd>
    <dt><code>Rn</code></dt>
    <dd>The first source register.</dd>
    <dt><code>Operand2</code></dt>
    <dd>A flexible second operand.</dd>
  </dl>
  </slide>
  <commentary>
    <p>This is the <em>general</em> form of the arithmetic and logical
    instructions. Many instructions have a similar syntax to this, but are not
    identical.</p>
    <p>In the syntax line, curly brackets indicate optional parts.</p>
    <p>Leftmost register <code>Rd</code> is the destination.</p>
    <p>Instructions are generally single-cycle (except write to <abbr>PC</abbr>
    and register-controlled shift).</p>
    <p>There is a newer form which ARM have recently introduced called <abbr
      title="Unified Assembler Language">UAL</abbr> (Unified Assembler
    Language), which allows the condition code to go after the flags.</p>
  </commentary>
  <footer>
  </heading>
</page>

