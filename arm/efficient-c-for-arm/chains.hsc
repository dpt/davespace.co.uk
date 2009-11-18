<* $Id$ *>

<page heading="Pointer Chains" rev="aliasing" cur="chains" fwd="sentinels">
  <nav>
  <heading>
  <slide>
    <p>Pointer chains are frequently used to access data in structures.</p>
    <p>Subject to <a href="aliasing.html">pointer aliasing</a>.</p>
  </slide>
  <examples>
  <before>
    <p>This code must reload <code>o-&gt;pos</code> after each assignment.</p>
<csyntax>typedef struct { int x,y,z; } Point3;
typedef struct { Point3 *pos, *dir; } Object;

void setPos1(Object *o)
{
  o-&gt;pos-&gt;x = 0;
  o-&gt;pos-&gt;y = 0;
  o-&gt;pos-&gt;z = 0;
}</csyntax>
<armsyntax>setPos1 LDR r2,[r0,#0]
        MOV r1,#0
        STR r1,[r2,#0]
        LDR r2,[r0,#0] ; *** redundant load
        STR r1,[r2,#4]
        LDR r0,[r0,#0]
        STR r1,[r0,#8]
        MOV pc,lr</armsyntax>
  </before>
  <after>
    <p>This improved version caches <code>o-&gt;pos</code> in a local
    variable.</p>
    <p>Another possibility is to include <code>Point3</code> in the
    <code>Object</code> structure.</p>
<csyntax>typedef struct { int x,y,z; } Point3;
typedef struct { Point3 *pos, *dir; } Object;

void setPos2(Object *o)
{
  Point3 *pos = o-&gt;pos;
  pos-&gt;x = 0;
  pos-&gt;y = 0;
  pos-&gt;z = 0;
}</csyntax>
<armsyntax>setPos2 LDR r0,[r0,#0]
        MOV r1,#0
        STR r1,[r0,#0]
        STR r1,[r0,#4]
        STR r1,[r0,#8]
        MOV pc,lr</armsyntax>
  </after>
  </examples>
  <commentary>
    <p>This is from ARM Application Note 34, Section 8.2.3. (Now withdrawn?)</p>
    <p>The compiler does not know that <code>o-&gt;pos-&gt;x</code> is not an
    alias for <code>o-&gt;pos</code>.</p>
  </commentary>
  <footer>
  </heading>
</page>

