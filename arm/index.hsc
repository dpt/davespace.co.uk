<* $Id$ *>

<page cur="index">

  <article title="Training Courses">
    <p>These pages contain two training courses originally written to introduce
    my former colleagues at <ext url="http://www.picsel.com/">Picsel</ext> to
    the joys of programming in <ext url="http://www.arm.com/"><ARM></ext>
    assembly language.</p>
    <p>The two courses are:</p>
    <dl>
      <dt><a href="introduction-to-arm/index.html">Introduction to ARM</a></dt>
      <dd>The first course introduces the reader to <ARM> assembly language. It
      goes on to explain the development of the <ARM> architecture and the
      capabilities of the various <ARM> <CPU> cores.</dd>
      <dd>After completing this course you should be able to understand <ARM>
      code well enough to understand the examples in the next.</dd>
      <dt><a href="efficient-c-for-arm/index.html">Efficient C for
        ARM</a></dt>
      <dd>The second course is concerned with tuning. It looks at how we can
      produce more efficient ARM code by altering the way we write our C
      code.</dd>
    </dl>
    <p>The courses were presented to over 70 engineers in the <UK> (Glasgow,
    Edinburgh, Reading), Malaysia (Kuala Lumpur) and Korea (Seoul).</p>
    <p>Each course would usually take three hours to deliver. The course would
    be presented sandwich style: two lecture parts and a delicious centre
    filling where the student gets to experiment with some small routines.</p>
  </article>

  <article title="Some caveats">
    <p>The courses have been (steadily, manually) converted across from the
    original PowerPoint slides and separate trainer&rsquo;s notes sheet I used
    when presenting the courses. This may show in the terseness of some of the
    pages. Detail is usually sacrificed for the sake of making a point.</p>
    <p>Some closely related sections have been merged together; some have been
    left separate. Some of the pages are of substantially different
    lengths.</p>
    <p>Over time I&rsquo;ll rework the content to better suit its new
    format.</p>
  </article>

  <article title="Toolchains">
    <p>The courses were written for an environment where the <ext
    url="http://www.keil.com/support/legacy.asp">ARM Developer Suite</ext>
    (<ADS>) was available, so all of the assembly examples use ARM&rsquo;s
    assembly language format. If you intend to try the examples on a more
    affordable compiler, such as <ext url="http://gcc.gnu.org/"><GCC></ext>,
    you will need to use <ext
    url="http://microcross.com/GNU-ARM-Assy-Quick-Ref.pdf">GNU <ARM> assembly
    language syntax</ext>.</p>
    <p>The assembly language examples were compiled with (the now very old pair
    of) <ADS> 1.2&rsquo;s armcc and <GCC> 2.95.2. You will find that other
    compilers produce different code, of varying quality. (In my experience
    WinCE&rsquo;s compiler in particular generates some particularly poor
    code).</p>
  </article>

  <article title="Changelog">
    <p>The most recent changes are listed first.</p>
    <dl>
      <dt>3<sup>rd</sup> March 2012</dt>
      <ddd>Added some mini reviews of the books pointed to by the <a
      href="introduction-to-arm/books.html">books</a> page.</dd>

      <dt>29<sup>th</sup> November 2010</dt>
      <ddd>Many adjustments and clarifications to the first half of
      Introduction to ARM.</dd>

      <dt>9<sup>th</sup> December 2009</dt>
      <ddd>Various minor tweaks to the text.</dd>

      <dt>24<sup>th</sup> November 2009</dt>
      <ddd>Added a note about implementation-defined behaviour to the <a
        href="introduction-to-arm/barrel-shifter.html">barrel shifter</a>
      page. (<ext
      url="http://groups.google.co.uk/group/comp.sys.acorn.programmer/msg/74c65ca783493669">sbrodie</ext>)</dd>
      <ddd>Fixed the factorial task <a
        href="introduction-to-arm/task-two-answers.html">answer to Task
        Two</a>: its <code>MOVEQ pc,r14</code> should have been <code>MOVEQ
        r0,#1</code> to return the correct result for 0!. (sbrodie)</dd>

      <dt>19<sup>th</sup> November 2009</dt>
      <ddd>New logo throughout (<ext url="http://fontfabric.com/val-font/">its
      font</ext>).</dd>
      <ddd>Assembler syntax colouring has been improved. It no longer
      highlights things inside of comments.</dd>

      <dt>October/November 2009</dt>
      <ddd>Various changes I&rsquo;ve forgotten to note properly,
      including...</dd>
      <ddd>The C code examples are now automatically syntax coloured using
      <ext
      url="http://search.cpan.org/~szabgab/Syntax-Highlight-Engine-Kate-0.06/">Syntax-Highlight-Engine-Kate</ext>.</dd>
      <ddd>Assembler examples coloured too, using a not very good
      script of my own.</dd>

      <dt>25<sup>th</sup> October 2009</dt>
      <ddd>Changelog started. :-)</dd>
      <ddd>Darkened the text colour of <code>&lt;CODE&gt;</code>
      elements. (joty)</dd>
      <ddd>Syntax coloured the code in <a
        href="introduction-to-arm/task-one.html">Task One</a> using Vim
      (<code>:tohtml</code>). (tlsa)</dd>
      <ddd><code>ASR</code> != &lt;&lt; <mdash> cut and paste error.
      (jmb)</dd>
    </dl>
  </article>

  <article title="Credits">
    <p>Many thanks go to the following kind souls for reviewing the
    content and making suggestions:</p>
    <ul class="packed">
      <li>Alex Macfarlane Smith</li>
      <li>Christopher Bazley</li>
      <li>Graham Borland</li>
      <li>John Tytgat</li>
      <li>John-Mark Bell</li>
      <li>Justin Fletcher</li>
      <li>Matt Holgate</li>
      <li>Michael Drake</li>
      <li>Robin Watts</li>
      <li>Stewart Brodie</li>
    </ul>
  </article>

  <article title="Acknowledgements">
    <p>ARM&reg; is a trademark of <ext url="http://www.arm.com/">ARM
    Limited</ext>.</p>
  </article>

  <comments>

</page>

