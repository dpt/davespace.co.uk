<* $Id$ *>

<page heading="Sentinels" rev="chains" cur="sentinels" fwd="unrolling">
  <nav>
  <heading>
  <slide>
    <p>When searching through a list we normally do two comparisons:</p>
    <ul>
      <li>Compare loop index against maximum.</li>
      <li>Compare current key against desired key.</li>
    </ul>
    <p>That&rsquo;s two flow conditions inside a tight loop, which is bad on
    modern pipelined CPUs.</p>
    <p>Solution:</p>
    <ul>
      <li>Augment the array with the desired value at the end.</li>
      <li>Allows both comparisons to be merged.</li>
      <li>But needs one extra element.</li>
    </ul>
  </slide>
  <examples>
    <before>
<csyntax>int search1(int *list, int N, int want)
{
  int i;

  for (i = 0; i &lt; N; i++)
    if (list[i] == want)
      return i;

  return -1;
}</csyntax>
<armsyntax>search1
     MOV   r3,#0     ; i = 0
     B     loop
test LDR   r12,[r0,r3,LSL #2]
     CMP   r12,r2    ; key
     ADDNE r3,r3,#1  ; i++
     BNE   loop
     MOV   r0,r3     ; i
     MOV   pc,lr
loop CMP   r3,r1     ; i &lt; N
     BLT   test
     MVN   r0,#0     ; -1
     MOV   pc,lr</armsyntax>
   </before>
   <after>
<csyntax>int search2(int *list, int N, int want)
{
  int i;

  list[N] = want;

  i = 0;
  while (list[i] != want)
    i++;

  if (i == N)
    return -1;

  return i;
}</csyntax>
<armsyntax>search2
     STR   r2,[r0,r1,LSL #2]
     MOV   r3,#0     ; i = 0
loop LDR   r12,[r0,r3,LSL #2]
     CMP   r12,r2
     ADDNE r3,r3,#1  ; i++
     BNE   loop
     CMP   r3,r1     ; i == N
     MOVNE r0,r3
     MVNEQ r0,#0     ; -1
     MOV   pc,lr</armsyntax>
    </after>
  </examples>
  <commentary>
    <p><dfn>Sentinel</dfn>: Computers. a symbol, mark, or other labelling
    device indicating the beginning or end of a unit of information.</p>
    <p>This is from <a class="external" href="http://www.azillionmonkeys.com/qed/case4.html">http://www.azillionmonkeys.com/qed/case4.html</a>.</p>
    <p>Obviously you need to ensure that <code>list[N]</code> is both available
    and writable.</p>
    <p>This can be improved further by <a href="indexing.html">replacing array
    indexing with pointers</a>.</p>
  </commentary>
  <footer>
  </heading>
</page>

