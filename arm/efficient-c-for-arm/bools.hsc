<* $Id$ *>

<page heading="Bools" rev="unaligned" cur="bools" fwd="bitfields">
  <nav>
  <heading>
  <slide>
    <p>Problem:</p>

    <ul>
      <li>A <code>bool</code> passed to a function eats up a whole
      register by itself.</li>
      <li>Passing around multiple <code>bool</code>s becomes very
      wasteful.</li>
      <li>There are usually <strong>31</strong> other spare bits which can be
      used.</li>
    </ul>

    <p>Solution:</p>

    <ul>
      <li>Convert multiple <code>bool</code>s into a single <code>unsigned
      int</code>,</li>
      <li>and create associated flag definitions.</li>
    </ul>

    <p>This reduces register pressure and allows for convenient
    multiple-<code>bool</code> tests to be carried out with a single logical
    operation.</p>
  </slide>

  <examples>
    <before>
      <csyntax>typedef unsigned int bool;

bool isEnemy(bool hasLasers,
             bool hasMissiles,
             bool hasBomb,
             bool hasECM)
{
  return hasLasers   ||
         hasMissiles ||
         hasBomb     ||
         hasECM;
}</csyntax>

      <armsyntax>isEnemy ORR   r0,r0,r1
        ORR   r0,r0,r2
        ORRS  r0,r0,r3
        MOVNE r0,#1
        MOV   pc,lr</armsyntax>
    </before>
    <after>
      <csyntax>typedef unsigned int ShipFlags;

#define ShipFlags_HasLasers   (1u &lt;&lt; 0)
#define ShipFlags_HasMissiles (1u &lt;&lt; 1)
#define ShipFlags_HasBomb     (1u &lt;&lt; 2)
#define ShipFlags_HasECM      (1u &lt;&lt; 3)

bool isEnemy2(ShipFlags flags)
{
  ShipFlags want = ShipFlags_HasLasers   |
                   ShipFlags_HasMissiles |
                   ShipFlags_HasBomb     |
                   ShipFlags_HasECM;

  return (flags &amp; want) != 0;
}</csyntax>

      <armsyntax>isEnemy2 ANDS  r0,r0,#0xf
         MOVNE r0,#1
         MOV   pc,lr</armsyntax>
    </after>
  </examples>
  <footer>
  </heading>
</page>

