<* $Id$ *>

<page heading="Floating Point" rev="slow" cur="fp" fwd="division">
  <nav>
  <heading>
  <slide>
    <p>Floating Point is usually <strong>emulated</strong> on <ARM>
    systems.</p>
    <ul>
      <li>Slow.</li>
      <ul>
        <lid>50-300&times; slower than equivalent integer ops.</li>
        <lid>Depending on library, environment.</li>
      </ul>
    </ul>
    <p>Possible solution:</p>
    <ul>
      <li><wiki subj="Fixed-point_arithmetic"><dfn>Fixed point</dfn>
      maths</wiki>.</li>
      <ul>
        <lid>Requires more thought.</li>
        <lid>Consequently more error prone.</li>
      </ul>
    </ul>
  </slide>
  <commentary>
    <p>Is this the most fundamental thing?</p>
    <p>Floating point is therefore slow and should be avoided unless
    you&rsquo;re dealing with one special case. This applies even to Java.</p>
    <p><ext url="http://en.wikibooks.org/wiki/Embedded_Systems/Embedded_System_Basics/Fixed-Point_Arithmetic">http://en.wikibooks.org/wiki/Embedded_Systems/Embedded_System_Basics/Fixed-Point_Arithmetic</ext></p>
  </commentary>
  <footer>
  </heading>
</page>

