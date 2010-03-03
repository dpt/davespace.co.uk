<* $Id$ *>

<page heading="Replacing an Iyonix's Case" cur="iyonix.case">
  <header>
  <sidebar>
  <content>
  <date>
  <article>
    <p>The <lq>Panther<rq> case which my <a
      href="http://www.iyonix.com/">IYONIX pc</a> came with was looking a bit
    tired and dusty. It's unusually heavy and <mdash> especially considering
    the sparse nature of the Iyo<rq>s motherboard, which has no bulky heatsinks
    to get in the way <mdash> quite empty inside. So I thought I might try
    repacking the Iyo into a smaller case.</p>

    <captionedimage url="iyonix.case.photos/DSCF2976.JPG" dsc="fnord!">The &lsquo;Panther&rsquo;
    case.</captionedimage>

    <p>After good a bit of searching for something suitable I chose the <a
      href="http://www.lian-li.com/v2/en/product/product06.php?pr_index=317&cl_index=1&sc_index=25&ss_index=64">LIAN
      LI PC-V351A</a> case. They're available in a variety of colours,
    including black, red and blue. I chose a silver version, ordering it from
    <a href="http://www.svp.co.uk/">SVP.co.uk</a>.</p>

    <p>The case is 279mm &times; 262mm &times; 373mm, all aluminium
    construction. It features twin 120mm front fans, an 80mm rear fan and
    sideways mounted drive bays, but it does not include a PSU.</p>

    <captionedimage url="iyonix.case.photos/DSCF2978.JPG" dsc="fnord!">The case, plus a
    shiatload of messy wiring under my desk.</captionedimage>

    <p>First thing before doing any moving around of components is to make a
    note of where the case wiring connects to on the motherboard. Unlike your
    common PC motherboard, the Iyo's doesn't have any indications of what
    connectors are for what, so making an accurate note before you unplug
    anything is essential.</p>

    <p>I wish I'd known about riscos.info's <a
      href="http://www.riscos.info/downloads/documents/IYONIX/IyonixJumpers.pdf">jumpers
      PDF</a> before starting, as it lists all the connections.</p>

    <captionedimage url="iyonix.case.photos/DSCF2943.JPG" dsc="fnord!">The reset connector
    <ndash> pins 15 and 16 on PL301 <ndash> obviously.</captionedimage>

    <p>Once everything is removed from the old case it can be transferred
    into the new one. The V351's the motherboard mounts on a sliding tray
    which can be slid out of the rear of the case. Mounting bolts must be
    screwed into the motherboard tray before the motherboard can be mounted.
    Screwing your motherboard directly to the tray is very likely to fry it
    (and, yes, I know someone who did just that.)</p>

    <captionedimage url="iyonix.case.photos/DSCF2945.JPG" dsc="fnord!">Motherboard and PCI cards
    mounted on the tray.</captionedimage>

    <p>Most components removed from Panther case and installed in the new case.</p>

    <p>It took some time to work out if the case's connectors for joining up
    the front connector panel would fit:</p>

    <ul>
      <li>Front USB <mdash> My Iyo has an NEC &micro;PD720100A-based USB PCI
      card with two rear ports and two internal ports (which upon closer
      investigation turned out to have another unused port). After a bit of
      circuit tracing I confirmed that the the case connector would match.
      However the case connector had a blocked out pin. Should I chop the pin
      off of the board or drill out the blocked pin hole? I settled for the
      latter.</li>

      <li>Front AC<rq>97 audio <mdash> This connector <strong>looks</strong>
      like it ought to just join up, having the same 2x5 block connector. But
      if you connect it up the Iyo loses its voice. The connectors are wired
      up differently.  For now I've decided that I can live without the front
      (well, side) mounted audio jacks until I can be bothered wiring up an
      adaptor cable.</li>
    </ul>

    <captionedimage url="iyonix.case.photos/DSCF2934.JPG" dsc="fnord!">Interior. Blue card at
    rear is video. Green is USB. Flat floppy and IDE leads are used at this
    stage.</captionedimage>

    <p>There are also HD audio and FireWire connectors which can't be used
    on the Iyo.</p>

    <captionedimage url="iyonix.case.photos/DSCF2933.JPG" dsc="fnord!">PSU, motherboard, drives,
    installed.</captionedimage>
  </article>

  <article title="3.5&rdquo; to 2.5&rdquo; Hard Disc">
    <p>To cut down the hard disc noise I replaced the existing Maxtor 80G 3.5"
    IDE hard disc with a Samsung 160G 2.5" unit. The LFAU on the new drive is
    <strong>huge</strong>. :-(</p>

    <p>2.5" drives use a different connector than 3.5" drives. It unifies the
    data and power connectors. To connect one to a machine expecting a 3.5"
    drive you need a small adaptor board.</p>

    <captionedimage url="iyonix.case.photos/DSCF2944.JPG" dsc="fnord!">The bay is set up for a
    pair of 3.5" drives, so the 2.5" drive has a mounting bracket fitted.  This
    doesn't provide an entirely satisfactory fit.</captionedimage>
  </article>

  <article title="Video Card Cooling Noise">
    <p>With the system reassembled it became obvious that the largest remaining
    source of noise was the GeForce card's cooling fan which emitted a
    high-pitched whine.</p>

    <p>I tried running the card with a fanless northbridge heatsink, but it was
    just getting too hot. So I replaced this with a new VGA cooler from <a
      href="http://www.quietpc.co.uk">Quiet PC</a>. Unlike the stock cooler
    this can't be powered from the card, so is instead connected up to a spare
    power rail from the PSU.</p>

    <captionedimage url="iyonix.case.photos/DSCF2940.JPG" dsc="fnord!">GeForce FX5500 with new
    copper fan and heatsink mounted on the CPU and individual copper
    heatsinks mounted on (pairs of) RAM chips. The red/blue twisty thing at
    the front is a tiny speaker.</captionedimage>

    <captionedimage url="iyonix.case.photos/DSCF2950.JPG" dsc="fnord!">Spare heatsinks were
    mounted on the three major chips.</captionedimage>
  </article>

  <article title="Rounded IDE Cables">
    <p>The left-hand front 120mm fan was partly obscured with the IDE and
    floppy cables which join the motherboard at that point. To allow the fan to
    work more effectively, I swapped these for a set of rounded leads.</p>

    <captionedimage url="iyonix.case.photos/DSCF2941.JPG" dsc="fnord!">Rounded floppy and IDE
    leads installed.</captionedimage>

    <captionedimage url="iyonix.case.photos/DSCF2951.JPG" dsc="fnord!"> I bought 12"? ones but
    with hindsight these are probably a few inches too long.</captionedimage>
  </article>

  <article title="Everything Together">
    <captionedimage url="iyonix.case.photos/DSCF2942.JPG" dsc="fnord!">Side view
    again.</captionedimage>

    <captionedimage url="iyonix.case.photos/DSCF2967.JPG" dsc="fnord!">f685s</captionedimage>
  </article>

  <comments>

  </content>
  <footer>
</page>

