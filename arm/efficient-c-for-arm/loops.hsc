<* $Id$ *>

<page heading="Looping Structures" rev="varaddr" cur="loops" fwd="regalloc">
  <header>
  <sidebar>
  <content>
  <slide>
    <p>Loop termination condition can have a significant overhead.</p>
    <ul>
      <li>You should write loops to count down.</li>
    </ul>
  </slide>
  <examples>
    <before>
      <p>Here&rsquo;s a routine to calculate a factorial.</p>
<csyntax>int fact1(int N)
{
  int i, fact = 1;
  for (i = 1; i &lt;= N; i++)
    fact *= i;
  return fact;
}</csyntax>
      <p>Compiled by <ARM> <ADS>:</p>
<armsyntax>fact1 MOV   r2,#1    ; fact
      MOV   r1,#1    ; i
loop  CMP   r1,r0    ; i &lt;= N
      MULLE r2,r1,r2
      ADDLE r1,r1,#1
      BLE   loop
      MOV   r0,r2
      MOV   pc,lr</armsyntax>
    </before>
    <after>
      <p>The revised routine counts down.</p>
<csyntax>int fact2(int N)
{
  int fact = 1;
  do
    fact *= N;
  while (--N != 0);
  return fact;
}</csyntax>
      <p>Compiled by <ARM> <ADS>:</p>
<armsyntax>fact2 MOV  r1,#1
loop  MUL  r1,r0,r1
      SUBS r0,r0,#1
      BNE  loop
      MOV  r0,r1
      MOV  pc,lr</armsyntax>
      <ul>
        <li>Allows <code>ADD</code>+<code>CMP</code> to become
        <code>SUBS</code>.</li>
        <li>The inner loop is now an instruction shorter.</li>
      </ul>
      <p>But do note the subtly different behaviour:</p>
      <ul>
        <li>Iterates at least once (ie. N == 0 won&rsquo;t work, causing an
        infinite loop.)</li>
        <li>Uses a pre-decrement combined with test.</li>
      </ul>
    </after>
  </examples>
  <commentary>
    <p>Inner loop is 4 instructions.</p>
    <p>Writing loops to count down is beneficial because:</p>
    <ul>
      <li>The <code>SUBS</code> instruction (subtract, setting flags) which is
      generated gives us a compare with zero for free.</li>
      <li>Replacing the <code>ADD</code>+<code>CMP</code> with
      <code>SUBS</code> saves a cycle per iteration.</li>
    </ul>

    after changes:

    <p><var>i</var> has been removed reducing register pressure.</p>
    <p>The counting up <code>for</code> loop was changed to a counting down
    <code>do .. while</code> loop.</p>
  </commentary>
  </content>
  <footer>
</page>

