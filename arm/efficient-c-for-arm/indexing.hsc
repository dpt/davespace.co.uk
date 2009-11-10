<* $Id$ *>

<page heading="Avoid Array Indexing" rev="datadrive" cur="indexing" fwd="aliasing">
  <nav>
  <heading>
  <slide>
  <dl>
    <dt>Accessing an array element uses two variables</dt>
    <dd>&ndash; <var>Base</var> and <var>Index</var>.</dd>
    <dt>Usually there&rsquo;s a limit value to test against too.</dt>
    <dd>&ndash; e.g. length of array.</dd>
    <dt>If you can substitute a single pointer variable instead of
    <var>Base</var> and <var>Index</var>, you can:</dt>
    <dd>&ndash; Replace per-access computations with a periodically
    incrementing pointer.</dd>
    <dd>&ndash; Usually save a register (3 variables -&gt; 2 variables).</dd>
  </dl>

  <p>If we rewrite the <tt>nameToNumber</tt> example routine from earlier as
  follows:</p>
  <csyntax class="c">int nameToNumber3(const char *name)
{
  static const struct map {
    const char name[7]; /* NB. PIC */
    int        value;
  } map[] = ...

  const struct map *entry, *end;

  end = map + NELEMS(map);
  for (entry = &amp;map[0]; entry &lt; end; entry++)
    if (strcmp(name, entry-&gt;name) == 0)
      return entry-&gt;value;

  return -1; /* default case */
}</csyntax>

  <p>ARMCC outputs the following:</p>
<armsyntax class="arm">nameToNumber3 STMFD    sp!,{r4-r6,lr}
              LDR      r4,=mapaddr     ; address of ‘map’
              MOV      r6,r0           ; stash copy of name
              ADD      r5,r4,#0x30     ; R5 = end
              CMP      r4,r5           ; out of data?
              BCS      exit
loop          MOV      r1,r4           ; R1 = entry-&gt;name
              MOV      r0,r6           ; R0 = name
              BL       strcmp
              CMP      r0,#0           ; match?
              LDREQ    r0,[r4,#8]      ; fetch entry-&gt;value
              LDMEQFD  sp!,{r4-r6,pc}  ; return it
              ADD      r4,r4,#0xc      ; otherwise no match
              CMP      r4,r5           ; loop until out..
              BCC      loop            ; ..of data
exit          MVN      r0,#0
              LDMFD    sp!,{r4-r6,pc}  ; return -1</armsyntax>
  </slide>
  <footer>
  </heading>
</page>

