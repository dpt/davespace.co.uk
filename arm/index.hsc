<* $Id$ *>

<masterpage author="David Thomas"
            keywords="Assembler, Assembly, Programming, ARM, CPU"
            desc="ARM training courses."
            root=""
            heading="ARM Training">
  <div id="masthead"><img src="img/logolg.png" width="208" height="263" alt="Home" /></div>
  <div id="content">
    <h1>ARM Training</h1>
    <slide title="Hello">
      <p>Here are two training courses originally written to introduce my
      former colleagues at <ext url="http://www.picsel.com/">Picsel</ext> to
      the joys of programming in <ext url="http://www.arm.com/">ARM assembly
      language</ext>.</p>
      <dl>
        <dt><a href="introduction-to-arm/index.html">Introduction to ARM</a></dt>
        <dd>The first course introduces the reader to ARM assembly language. It
        goes on to explain the development of the ARM architecture and the
        capabilities of the various ARM CPU cores.</dd>
        <dd>After reading this you should be able to understand ARM code well
        enough to understand the examples in the following course...</dd>
        <dt><a href="efficient-c-for-arm/index.html">Efficient C for
          ARM</a></dt>
        <dd>The second course is about tuning. It looks at how we can produce
        efficient ARM code by altering the way we write our C code.</dd>
      </dl>
      <p>The courses were presented to over 70 engineers in the <UK> (Glasgow,
      Edinburgh, Reading), Malaysia (Kuala Lumpur) and Korea (Seoul).</p>
      <p>Each course would usually take three hours to deliver. The course
      would be presented sandwich style: two lecture parts and a delicious
      centre filling where the student gets to experiment with some small
      routines.</p>
    </slide>
    <slide title="Some caveats">
      <p>The courses have been (manually) converted across from the PowerPoint
      slides and separate trainer&rsquo;s notes I used when presenting the
      courses. This may show in the terseness of some of the pages. Some detail
      is sacrificed for the sake of making a point.</p>
      <p>Some closely related sections have been merged together, some were
      left separate. Some of the pages are of substantially different
      lengths.</p>
      <p>Over time I&rsquo;ll rework the content to better suit its new
      format.</p>
    </slide>
    <slide title="Toolchains">
      <p>The courses were written for an environment where the <ext
      url="http://www.arm.com/products/DevTools/ADS.html">ARM Developer
      Suite</ext> (<ADS>) was available, so all of the assembler examples are
      in <ADS> format.  If you intend to try the examples on a more affordable
      compiler, such as <ext url="http://gcc.gnu.org/"><GCC></ext>, you will
      need to use <ext
      url="http://microcross.com/GNU-ARM-Assy-Quick-Ref.pdf">GNU <ARM>
      assembler syntax</ext>.</p>
      <p>Assembler examples were compiled with (the now rather old pair of)
      <ADS> 1.2&rsquo;s armcc and <GCC> 2.95.2. You will find that other
      compilers produce different code, of varying quality. (In my experience
      WinCE&rsquo;s compiler in particular generates some particularly poor
      code).</p>
    </slide>
    <slide title="Changelog">
      <p>The most recent changes are listed first.</p>
      <dl>
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
        <ddd>New logo throughout (<ext url="http://fontfabric.com/?p=585">its
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
    </slide>
    <slide title="Credits">
      <p>Many thanks go to the following kind souls for reviewing the
      content and making suggestions:</p>
      <ul>
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
    </slide>
    <slide title="Acknowledgements">
      <p>ARM&reg; is a trademark of <ext url="http://www.arm.com/">ARM
      Limited</ext>.</p>
    </slide>
    <slide title="Comments">
      <p>If you have any suggestions for improving these pages you can email me
      at dave at davespace dot co dot uk.</p>
    </slide>
    <footer>
  </div>
</masterpage>

