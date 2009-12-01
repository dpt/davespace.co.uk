<* $Id$ *>

<page heading="Profilers" rev="optimising" cur="profilers" fwd="slow">
  <nav>
  <heading>
  <slide>
    <p>When profiling on x86 don&rsquo;t expect the results to be accurate for
    <ARM>.</p>
    <ul>
      <li>Strengths and weaknesses of the platform will affect results.</li>
    </ul>

    <p>Profiles will show you where most time is spent.</p>
    <ul>
      <li>That&rsquo;s not going to highlight any algorithmic mistakes.</li>
      <ul>
        <li>You can tune a bubble sort to perfection...</li>
      </ul>
    </ul>

    <p>Remember to profile release builds.</p>
    <ul>
      <li>Including debugging code may skew your results:</li>
      <ul>
        <li>Debug mode normally inhibits compiler optimisations.</li>
        <li>Debug builds enable a variety of extra bits (assertions, debug output).</li>
      </ul>
    </ul>
  </slide>
  <footer>
  </heading>
</page>

