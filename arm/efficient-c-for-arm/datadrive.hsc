<* $Id$ *>

<page heading="Data Drive" rev="hoisting" cur="datadrive" fwd="indexing">
  <nav>
  <heading>
  <slide>
  <ul>
    <li>Avoid mixing code and data together.</li>
    <li>Instead separate out the data and write a simple loop.</li>
    <li>Doing this generates <strong>less</strong> code.</li>
  </ul>
  </slide>
  <examples>
    <p>The following routine maps a name to a number:</p>
<csyntax>int nameToNumber(const char *name)
{
    if      (strcmp(name, "John")   == 0) return 5;
    else if (strcmp(name, "Paul")   == 0) return 2;
    else if (strcmp(name, "George") == 0) return 9;
    else if (strcmp(name, "Ringo")  == 0) return 3;
    else return -1; /* default case */
}</csyntax>
    <p>Because each case is written out individually, the compiler will
    emit code for every individual case:</p>
<armsyntax>nameToNumber
        STMFD    sp!,{r4,lr}
        MOV      r4,r0       ; name
        ADR      r1,|L1.104| ; "John"
        BL       strcmp
        CMP      r0,#0       ; yes?
        MOVEQ    r0,#5       ; retval
        LDMEQFD  sp!,{r4,pc} ; return
        MOV      r0,r4       ; name
        ADR      r1,|L1.112| ; "Paul"
        BL       strcmp
        CMP      r0,#0       ; yes?
        MOVEQ    r0,#2       ; retval
        LDMEQFD  sp!,{r4,pc} ; return
        ; ... more for each case ...</armsyntax>
    <p>26 instructions &times; 4 bytes = 104 bytes.</p>
    <p>If we generalise the code, storing the data in a table which maps the
    input names to output numbers then we can save a significant amount of
    code:</p>
<csyntax>#define NELEMS(a) ((int) (sizeof(a) / sizeof(a[0])))

int nameToNumber2(const char *name)
{
  static const struct
  {
    const char name[7]; /* NB. PIC */
    int        value;
  }
  map[] =
  {
    { "John",   5 },
    { "Paul",   2 },
    { "George", 9 },
    { "Ringo",  3 }
  };
  int i;

  for (i = 0; i &lt; NELEMS(map); i++)
    if (strcmp(name, map[i].name) == 0)
      return map[i].value;

  return -1; /* default case */
}</csyntax>

<armsyntax>nameToNumber2 STMFD    sp!,{r4-r6,lr}
              LDR      r6,=mapaddr     ; address of 'map'
              MOV      r5,r0           ; stash copy of name
              MOV      r4,#0           ; i
loop          ADD      r0,r4,r4,LSL #1 ;
              ADD      r1,r6,r0,LSL #2 ; map + i*12
              MOV      r0,r5           ; = name
              BL       strcmp
              CMP      r0,#0           ; match?
              ADDEQ    r0,r4,r4,LSL #1 ; yes
              ADDEQ    r0,r6,r0,LSL #2 ; map + i*12 again
              LDREQ    r0,[r0,#8]      ; fetch map[i].value
              LDMEQFD  sp!,{r4-r6,pc}  ; return it
              ADD      r4,r4,#1        ; otherwise no match
              CMP      r4,#4           ; loop until out..
              BLT      loop            ; ..of data
              MVN      r0,#0
              LDMFD    sp!,{r4-r6,pc}  ; return -1</armsyntax>
    <p>18 instructions &times; 4 bytes = 72 bytes.</p>
  </examples>
  <footer>
  </heading>
</page>

