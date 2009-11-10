<* $Id$ *>

<page heading="The Stack" rev="multiple-data-transfer" cur="stack" fwd="chain">
  <nav>
  <heading>
  <slide>
  <p>We need to store the processor state when making nested calls.</p>
  <p>The multiple data transfer instructions provide a mechanism for storing
  state on the <dfn>stack</dfn> (R13).</p>
  <p>The <code>STM</code> and <code>LDM</code> instructions&rsquo; modes have
  aliases for accessing stacks:
    <dl>
      <dt><code>FD</code></dt>
      <dd>&ndash; Full Descending</dd>
      <dt><code>ED</code></dt>
      <dd>&ndash; Empty Descending</dd>
      <dt><code>FA</code></dt>
      <dd>&ndash; Full Ascending</dd>
      <dt><code>EA</code></dt>
      <dd>&ndash; Empty Ascending</dd>
    </dl>
  </p>
  </slide>
  <commentary>
    <p>As you'll recall R13 points to the stack.</p>
    <dl>
      <dt><code>FD</code> = Full Descending</dt>
      <dd><code>STMFD</code>/<code>LDMFD</code> = <code>STMDB</code>/<code>LDMIA</code></dd>
      <dt><code>ED</code> = Empty Descending</dt>
      <dd><code>STMED</code>/<code>LDMED</code> = <code>STMDA</code>/<code>LDMIB</code></dd>
      <dt><code>FA</code> = Full Ascending</dt>
      <dd><code>STMFA</code>/<code>LDMFA</code> = <code>STMIB</code>/<code>LDMDA</code></dd>
      <dt><code>EA</code> = Empty Ascending</dt>
      <dd><code>STMEA</code>/<code>LDMEA</code> = <code>STMIA</code>/<code>LDMDB</code></dd>
    </dl>
    <p>Anything but a full descending stack is rare!</p>
  </commentary>
  <examples>
  <p>
  <code>STMFD r13!, {r4-r7}</code> &ndash; Push R4,R5,R6 and R7 onto the stack.
  </p>
  <diagram src="stmfd.png" alt="STMFD" width="379" height="258">
  <p>
  <code>LDMFD r13!, {r4-r7}</code> &ndash; Pop R4,R5,R6 and R7 from the stack.
  </p>
  <diagram src="ldmfd.png" alt="LDMFD" width="379" height="258">
  </examples>
  <footer>
  </heading>
</page>

