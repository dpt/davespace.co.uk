<* $Id$ *>

<page heading="Bitfields" rev="bools" cur="bitfields" fwd="padding">
  <nav>
  <heading>
  <slide>
    <ul>
      <li>Mini structure members.</li>
      <li>Subject to pointer aliasing.</li>
      <li>Layout not guaranteed.</li>
    </ul>

    <p>On the whole, you&rsquo;re better off using a flags word.</p>

<csyntax class="bad">typedef struct {
  unsigned int hasLasers   : 1;
  unsigned int hasMissiles : 1;
  unsigned int hasBomb     : 1;
  unsigned int hasECM      : 1;
} ShipData;

ShipFlags getShipFlags(const ShipData *d)
{
  return (d-&gt;hasLasers   &lt;&lt; 0) |
         (d-&gt;hasMissiles &lt;&lt; 1) |
         (d-&gt;hasBomb     &lt;&lt; 2) |
         (d-&gt;hasECM      &lt;&lt; 3);
}</csyntax>

<armsyntax class="bad">getShipFlags LDR r0,[r0,#0]
             AND r0,r0,#0xf
             MOV pc,lr</armsyntax>

<csyntax class="good">typedef struct {
  ShipFlags flags;
} ShipData2;

ShipFlags getShipFlags2(const ShipData2 *d)
{
  return d-&gt;flags;
}</csyntax>

<armsyntax class="good">getShipFlags2 LDR r0,[r0,#0]
              MOV pc,lr</armsyntax>


THIS IS NOT A TERRIBLY GOOD EXAMPLE.
  </slide>
  <footer>
  </heading>
</page>

