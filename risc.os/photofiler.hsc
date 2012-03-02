<* $Id$ *>

<page heading="PhotoFiler" cur="photofiler">

  <downloadbox>
    <download><a href="../software/photofiler208.zip">Download</a> (71k Zip)</download>
    <download><a href="../software/photospr.zip">Example directory sprites</a> <ndash> RISC&nbsp;OS 3 style (15k Zip)</download>
  </downloadbox>

  <article>
    <p class="icon"><img src="img/photofiler.png" alt="icon" /></p>

    <p>Current version: version 2.08 (05-Feb-2008)</p>

    <p>PhotoFiler is a utility which extends the display abilities of the RISC
    OS Filer, turning it into an image thumbnailing tool.</p>
    <p>When PhotoFiler is loaded, Sprites, JPEGs and DrawFiles can be shown in
    miniature in place of their usual file type icon. This is very useful for
    organising collections of bitmap and clip-art images, as it allows rapid
    identification of images.</p>
    <p>It can also integrate with ImageFS and the ArtWorks renderer modules.</p>
    <p>In addition to thumbnailing, it also allows you to define your own
    directory sprites and remove the pling ('!') character from the display of
    application names.</p>
    <p>PhotoFiler requires RISC&nbsp;OS 3.6 or later (RISC&nbsp;OS 3.5 is supported, if
    the SpriteExtend 0.99 and DrawFile 1.30 modules are available.)</p>
    <p>This version is a new release as freeware with the source code
    included.</p>
  </article>

  <article title="Features">
    <ul>
    <li>Generates detailed Sprite, JPEG and DrawFile thumbnails.</li>
    <li>The thumbnailing process fully multitasks.</li>
    <li>Custom sprites can be defined for directories.</li>
    <li>Plings ('!') can be removed from the display of application names.</li>
    <li>Works with all screen modes and filing systems.</li>
    <li>Thumbnailing can quickly be suppressed by holding down Ctrl as you open the directory.</li>
    <li>Control panel allows control over which formats are thumbnailed, dithering, etc.</li>
    <li>Compact module written in 100% assembler.</li>
    <li>Fast.</li>
    </ul>
  </article>

  <article title="(Ancient) Screenshots">
    <captionedimage url="../software/photofilersnap0.png"
    dsc="Screenshot.">PhotoFiler is shown here displaying the contents of the
    JPEG images directory, as supplied with RISC&nbsp;OS 3.5 and
    later.</captionedimage>
    <captionedimage url="../software/photofilersnap1.png" dsc="Screenshot.">Here
    the <lq>Hide plings<rq> feature is used to remove the <lq>!<rq> character
    from the start of application names, giving a neater looking
    display.</captionedimage>
    <captionedimage url="../software/photofilersnap2.png" dsc="Screenshot.">An
    example of a typical directory enhanced with custom directory sprites.
    Sprites can be defined for each of the four possible states; selected,
    unselected, open and closed.</captionedimage>
  </article>

  <article title="History">
    <p><ext url="http://armware.dk/">Zappo</ext> wrote <ext
    url="http://www.armpit.dk/files/filerpro/">FilerPro</ext> which was a
    complete replacement for the RISC&nbsp;OS Filer. One of its numerous
    features was that it allowed image and movie formats to be thumbnailed with
    an extensible system of modules.</p>
    <p><ext url="http://www.gerph.org/">Gerph</ext> wrote JFFilerPro, which
    used FilerPro's thumbnailing modules to add thumbnail support to the native
    Filer. It crashed a lot, but was so nifty that I reimplemented the entire
    lot from scratch as PhotoFiler.</p>
  </article>

  <article title="Source Code">
    <p>
      The PhotoFiler source lives at <a
        href="svn://svn.riscos.info/photofiler">svn://svn.riscos.info/photofiler</a>.
      Use <a
        href="http://www.riscos.info/websvn/listing.php?repname=photofiler">http://www.riscos.info/websvn/listing.php?repname=photofiler</a>
      for the web-based repository viewer.
    </p>
  </article>

</page>

