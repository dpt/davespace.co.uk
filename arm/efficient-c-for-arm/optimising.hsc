<* $Id$ *>

<page heading="Optimising" rev="before-tuning" cur="optimising" fwd="profilers">
  <slide>
    <p>The goal is to write C code which compiles into perfect, efficient,
    <ARM> code which:</p>
    <ul>
      <li>Runs as fast as possible, and</li>
      <li>Is as small as possible.</li>
    </ul>
    <p>Often these goals are contradictory.</p>
    <p>This process is called <dfn>optimisation</dfn>.</p>
    <p>Optimisation is not the same as fixing, reworking or refactoring your
    code.</p>
    <p>Optimisation takes time and may reduce readability.</p>
  </slide>
  <commentary>
    <p>Optimisation is an iterative process, often involving much
    discovery.</p>
  </commentary>
  <slide title="When To Optimise">
    <p><strong>Only</strong> optimise heavily-used routines.</p>
    <p>Discover heavily-used routines by:</p>
    <ul>
      <li>Inspection</li>
      <li>Using a profiler</li>
    </ul>
    <p>The act of discovery is often surprising; sometimes embarrassing:</p>
    <blockquote>&ldquo;He was calling strlen() in a loop.&rdquo;</blockquote>
  </slide>
  <commentary>
    <p>It might be worth optimising big routines for space.</p>
    <p>Inspection is important: just reading the code can show up a multitude
    of problems.</p>
    <p>Sometimes it&rsquo;s valuable to re-visit code you&rsquo;ve written
    earlier. A fresh perspective can make a difference to how you view the
    code.</p>
  </commentary>
</page>

