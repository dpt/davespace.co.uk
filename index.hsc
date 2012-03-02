<* $Id$ *>

<page cur="index">
    <article title="February 11<sup>th</sup>, 2012">
    <p>Added an article about <a href="risc.os/iyonix.case.html">putting an
      Iyonix in a new case.</a></p>
    </article>
    <article title="February 5<sup>th</sup>, 2012">
      <p>Here<rq>s <a href="risc.os/privateeye.html">PrivateEye</a> 2.99 with a selection of small-ish changes:</p>
      <ul class="packed">
        <li>Rebuilt from the open source codebase for ARMv7 compatibility.</li>
        <li>PrivateEye is now licensed under a BSD license.</li>
        <li>Improved the blur effect. You can now select box or gaussian blurs with up to a 47 pixel radius.</li>
        <li><lq>Midpoint<rq> curve effect added.</li>
        <li>FFG (TransFSI, TranTIFF+, etc.) import improved.</li>
        <li>libjpeg updated to version 8c.</li>
        <li>Image cache can go up to 256M.</li>
        <li>Wider range of default scale values.</li>
        <li>and various other bits and pieces.</li>
      </ul>
    </article>
    <article title="July 22<sup>nd</sup>, 2011">
      <p>I've been working on a C library called <dfn><a href="https://github.com/dpt/Containers">Containers</a></dfn>. This implements various different associative array structures, such as arrays, linked lists, binary search trees, tries and crit-bit trees. It's now hosted on <a href="http://github.com">github</a>.</p>
      <p>Also, I've made some small-ish tweaks to the site:</p>
      <ul class="packed">
        <li>The slides on the <a href="arm/index.html">ARM training pages</a> now have a background box with rounded corners and shadows where available.</li>
        <li>There's a nice new footer at the bottom of every page on the site.</li>
      </ul>
    </article>
    <article title="September 15<sup>th</sup>, 2010">
      <p>
        I<rq>ve noticed in the site<rq>s logs that people were occasionally
        arriving here after searching for the source code to <a
          href="risc.os/privateeye.html">PrivateEye</a>. I'd not generally made
        its source available as the people who had previously asked for it had
        received it, then they went all quiet. I presumed that was a bad sign.
      </p>
      <p>
        <a href="risc.os/photofiler.html">PhotoFiler</a> has previously had its
        source released but not one bit of feedback came of that. Presumably
        it<rq>s perfect.
      </p>
      <p>
        I've uploaded the source code to both <a
          href="risc.os/photofiler.html">PhotoFiler</a> and <a
          href="risc.os/privateeye.html">PrivateEye</a> to <a
          href="http://www.riscos.info/">riscos.info</a>'s subversion server.
      </p>
      <ul class="packed">
        <li>
          The PhotoFiler source lives <a
            href="svn://svn.riscos.info/photofiler">here</a> (<tt>svn://</tt>)
          or <a
            href="http://www.riscos.info/websvn/listing.php?repname=photofiler">here</a>
          for the web-based repository viewer.
        </li>
        <li>
          The PrivateEye source live <a
            href="svn://svn.riscos.info/privateeye">here</a> (<tt>svn://</tt>)
          or <a
            href="http://www.riscos.info/websvn/listing.php?repname=privateeye">here</a>
          for the web-based repository viewer.
        </li>
      </ul>
      <p>
        Now I would like to carry on beavering away on both utilities but, to
        be honest, the Iyonix doesn't get switched on that much these days. I
        have grand things planned, with image tagging, tag clouds, thumbnails,
        searching and magical flying ponies called Geoff. All of that work in
        in the released source but it's not in anywhere near a useful state.
      </p>
      <p>
        Enjoy!
      </p>
    </article>

    <article title="March 3<sup>rd</sup>, 2010">
      <ul class="packed">
        <li>New site design.</li>
        <li>New <a href="arm/index.html">ARM assembly language section</a>
        featuring two ARM training courses.</li>
      </ul>
    </article>

    <article title="July 31<sup>st</sup>, 2009">
      <p><a href="risc.os/toolbar.html">Toolbar</a> 1.21 fixes a crash on RISC OS 6.</p>
    </article>

    <article title="July 30<sup>th</sup>, 2009">
      <p>After a mere decade's hiatus here's <a
        href="risc.os/toolbar.html">Toolbar</a> 1.20 with a few tweaks.</p>
      <uncaptionedimage url="software/toolsnap1t.png"
      bigurl="software/toolsnap1.png" dsc="Snapshot.">
      <ul class="packed">
        <li>The toolbar now opens and closes independently of desktop speed. So
        if a greedy process is hogging your desktop, the toolbar will now
        unfurl and retract in the same amount of time.</li>
        <li>You can have multiple toolbars, if you fire off multiple instances
        (it'll use different choices files and position itself
        independently).</li>
        <li>The !RunImage is no longer squashed.</li>
      </ul>
    </article>

    <article title="February 2<sup>nd</sup>, 2009">
      <p>Geminus, the Iyonix graphics accelerator, has been re-released as a <a
        href="http://adrianl.drobe.co.uk/geminus.html">free download</a>. Its
      sprite caching provides a substantial speedup for <a
        href="risc.os/photofiler.html">PhotoFiler</a> and its JPEG acceleration greatly
      benefits <a href="risc.os/privateeye.html">PrivateEye</a>.</p>
    </article>

    <article title="June 3<sup>rd</sup>, 2008">
      <p><a href="risc.os/privateeye.html">PrivateEye</a> 2.85 with enhanced transparency
      and <acronym title="Portable Network Graphics">PNG</acronym> support.</p>
      <uncaptionedimage url="software/eyesnap4t.png"
      bigurl="software/eyesnap4.png" dsc="Snapshot.">
      <p>Sprites and PNGs may specify an <em>alpha channel</em> to hold
      transparency information. PrivateEye can now recognise and display these
      images using the <a href="http://www.tinct.net/tinct.asp">Tinct</a>
      module.</p>
      <p>Transparent images can be displayed against a checkerboard pattern
      background.</p>
      <p>The effect system now knows about alpha channel data and always
      preserves it. The curve effect has been upgraded to allow editing of the
      alpha data.</p>
      <p>All these changes are mainly in aid of enhanced PNG support. Now all
      of the images in <a href="http://www.schaik.com/pngsuite/">PngSuite</a>
      can be loaded and displayed.</p>
    </article>

    <article title="February 5<sup>th</sup>, 2008">
      <p><a href="risc.os/photofiler.html">PhotoFiler</a> is now <strong>freeware</strong>
      and includes the <strong>source code</strong>.</p>
    </article>

    <article title="January 14<sup>th</sup>, 2008">
      <p><a href="risc.os/privateeye.html">PrivateEye</a> 2.75 with JPEG metadata
      support.</p>
      <uncaptionedimage url="software/eyesnap3t.png"
      bigurl="software/eyesnap3.png" dsc="Snapshot.">
      <p>The big new feature in this version is interpretation of JPEG
      metadata, one example of which is <a href="http://www.exif.org">Exif</a>
      data. The new version of PrivateEye can decode and present this data in a
      treeview, so you can view (but not edit) the information stored by
      digital cameras and image processing applications. It also supports
      Adobe, IPTC-NAA and JFIF COM data.</p>
      <p>The other new feature is caching. PrivateEye can allocate an amount of
      memory in which to preserve recently-loaded images. This saves time when
      flipping back and forth between files.</p>
      <p>I've also made the 'Convert to Sprite' function for JPEGs more
      accessible, which makes using the histogram and effects system more
      convenient.</p>
    </article>

    <article title="July 17<sup>th</sup>, 2007">
      <p>PrivateEye 2.50 had a bug which could stop the effects window working
      on any OS earlier than <acronym>RISC&nbsp;OS</acronym> 4. I was calling
      Wimp_AutoScroll which didn't exist up until WindowManager 4.00.</p>
      <p>Bug fix release 2.51, now available, fixes the problem and also tidies
      up some vanishing icons in the templates.</p>
    </article>

    <article title="June 27<sup>th</sup>, 2007">
      <p>PrivateEye 2.50 has effects!</p> <uncaptionedimage
      url="software/eyesnap2t.png" bigurl="software/eyesnap2.png"
      dsc="Snapshot.">
      <p>Features:</p>
      <ul class="packed">
        <li><strong>Bitmap effects</strong><br /> New bitmap effects window
        allows adjustment of brightness, contrast, gamma, tinting, blurring,
        sharpening, histogram-based adjustments and more.</li>
        <li><strong>Editing awareness</strong><br /> PrivateEye now knows when
        you've edited images.</li>
        <li><strong>Histogram</strong><br /> The histogram window has been
        freed from the menu structure and can now show you the individual
        histograms for red, green and blue.</li>
        <li><strong>PhotoCheck</strong><br /> Brought across from PhotoFiler,
        this OS patch enables the versions of SpriteExtend in
        <acronym>RISC&nbsp;OS</acronym> 3.6, 3.7 and 4.0x to cope with a
        greater range of JPEGs.</li>
        <li><strong>Customisable keymap</strong><br /> You can now redefine or
        supplement the standard key mappings.</li>
      </ul>
    </article>

    <article title="December 22<sup>nd</sup>, 2006">
      <p>The new PrivateEye 2.00 is ready!</p> <uncaptionedimage
      url="software/eyesnap1t.png" bigurl="software/eyesnap1.png"
      dsc="Snapshot.">
      <p>Features:</p>
      <ul class="packed">
        <li><strong>Viewer windows gain input focus.</strong><br /> Many
        key-activated functions have been added.</li>
        <li><strong>Viewer windows can fill the whole desktop.</strong><br />
        The image is shown centered within the viewer.</li>
        <li><strong>Rotation.</strong><br /> Sprites and JPEGs can now be
        transformed with any combination of 90 degree rotations and horizontal
        flips. JPEG transformations are lossless.</li>
        <li><strong>Progressive JPEGs can now be loaded and
          displayed.</strong><br /> JPEGs are now integrity checked when
        loaded. If they fail the check, they're passed through an internal
        version of jpegtran.</li>
        <li><strong>New views.</strong><br /> You can now have multiple views
        open on the same image.</li>
        <li><strong>Luminance histogram window.</strong></li>
        <li><strong>&amp; more...</strong> smooth scrolling, movement through
        files, <a href="http://www.tinct.net/Downloads/Tinct.aspx">Tinct</a>
        support, autofiletype, FFG support, fit to screen, fit to window, shiny
        new sprites, all-new PDF manual, ...</li>
      </ul>
    </article>

    <article title="Links">
      <ul>
        <li><a href="http://delicious.com/dpt">http://delicious.com/dpt</a>
        <ndash> My social bookmarks. Mainly C, graphics programming and bit
        twiddles.</li>
      </ul>
    </article>

    <comments>
</page>

