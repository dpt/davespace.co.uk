<* $Id$ *>

<page heading="Re-case an Iyonix" cur="iyonix.case">
  <header>
  <sidebar>
  <content>
  <date>

  <article>

  <p><em>This article was originally printed in the December 2010 (vol. 22 issue
    11) of <a href="http://www.archivemag.co.uk/">Archive</a> magazine.</em></p>

  <p>Once again I<rq>d banged my left knee on the <a
    href="http://www.iyonix.com/">IYONIX pc</a> sitting under the desk; I cursed
  and vowed revenge. The <ldq>Panther<rdq> case in which it was housed seemed
  extravagant considering the sparse motherboard lying within. Lacking the bulky
  <cpu> heatsinks of a modern <PC>, the Iyonix motherboard is clear of major lumps
  and bumps so seems ideal for moving into a smaller, more appropriate, case.
  Here I<rq>m documenting my experience in doing just that.</p>

  <captionedimage url="iyonix.case.photos/DSCF2976.JPG" dsc="The Panther case">The &lsquo;Panther&rsquo; case.</captionedimage>

  </article>

  <article title="The New Case">

  <p>The Iyonix motherboard is a <microATX> format board so it should slot
  reasonably easily into any modern <ATX> form factor case. After a bit of
  searching for something suitable I chose a <a
    href="http://www.lian-li.com/v2/en/product/product06.php?pr_index=317&cl_index=1&sc_index=25&ss_index=64">LIAN
    LI PC-V351A</a> case. This measures 279mm &times; 262mm &times; 373mm. Its
  all-aluminium construction aids cooling. It features twin 120mm front fans, an
  80mm rear fan and sideways mounted drive bays. The front of the case is clean,
  almost sparse, looking with the power and reset buttons at the bottom right
  hand side. It<rq>s available in a variety of colours, including black, red and
  blue. I chose the silver version and ordered it from <a
    href="http://www.svp.co.uk/">SVP.co.uk</a>.</p>

  <captionedimage url="iyonix.case.photos/DSCF2978.JPG" dsc="fnord!">The new
  LIAN LI case, plus a shiatload of messy wiring under my desk.</captionedimage>

  <p>The case is not supplied with a <PSU>. You have the option of buying a new
  one or transferring the existing one across. Given the extensive problems
  people seem to have with Iyonix <PSU>s it might be for the best to use
  something proven at least until you<rq>re happy that your changed setup is
  stable.</p>

  </article>

  <article title="Time To Take Some Notes">

  <p>Before removing any components make a note of how the existing case<rq>s
  wiring connects to the motherboard. Unlike any common <PC> motherboard, the
  Iyonix doesn<rq>t label its connectors. Taking a detailed note before you
  unplug anything is essential if you want it all to go back together again.</p>

  <p>I wish I<rq>d known about riscos.info<rq>s useful <a
    href="http://www.riscos.info/downloads/documents/IYONIX/IyonixJumpers.pdf">jumpers
    PDF</a> before starting the upgrade, as it helpfully lists all of the
  connections present on the Iyonix motherboard.</p>

  <p>You should also record which slots the <PCI> cards were located in as the
  Iyonix may get upset if they move position.</p>

  <captionedimage url="iyonix.case.photos/DSCF2943.JPG" dsc="fnord!">Connecting
  the reset connector <ndash> pins 15 and 16 on PL301 <ndash>
  obviously.</captionedimage>

  </article>

  <article title="Disassemble Number Johnny Five">

  <p>Once notes are taken we can dismantle the existing case, removing the
  drives, <PCI> cards, motherboard and <PSU> - remembering, of course, to observe
  electro-static precautions. This is usually a good opportunity to clean out
  any dust which has accumulated on the components.</p>

  <p>A tricky part to disassemble is that the motherboard<rq>s rear panel which
  snaps into its hole in the case. This can be a bit of a pain to remove and
  re-insert. The trick is to press in at the edges from the rear of the case.
  They will, with a bit of wiggling, click out of position and allow the
  motherboard to be fully removed.</p>

  </article>

  <article title="Reassemble Number Johnny Five">

  <p>The first step is to prepare the new case for the mounting of the
  motherboard. In the V351 case the motherboard sits on a removable tray which
  slides out to the rear. Mounting bolts must be screwed into the motherboard
  tray before the motherboard can be mounted. Screwing the motherboard directly
  to the tray is very likely to fry it (I mention this as a colleague once did
  just that to his brand new <PC>.)</p>

  <captionedimage url="iyonix.case.photos/DSCF2945.JPG" dsc="fnord!">Motherboard
  and <PCI> cards mounted on the tray.</captionedimage>

  <p>Once the bolts are in place, clip the motherboard back into the rear panel.
  Make sure that the board is steady on its mounts and that the screw holes line
  up. You can then screw the motherboard into place. Note that the mount
  adjacent to the rightmost <PCI> slots is there only for support and doesn<rq>t
  need a screw. With the motherboard securely in place we can then re-insert the
  <PCI> cards back into their original slots and screw them to the rear of the
  case.</p>

  <p>Now we can start connecting the power cables up. First in is the large
  power connector on the left hand side of the board. Then we can insert the
  smaller cables at the top of the board: the <IDE> <LED>, the front power light,
  the power switch.</p>

  <p>Using small cable ties to keep the wires together can aid the airflow
  through the case and prevents stray wires from potentially shorting against
  bits of the board.</p>

  <p>Next the reset switch which is connected to the left hand side of the
  board. This had become bent in my own machine as the original Panther reset
  lead wasn<rq>t apparently long enough.</p>

  <p>Finally the V351 provides a micro speaker which connects to the header next
  to the last <PCI> slot. These are intended for producing beeping noises only so
  don<rq>t expect much quality from it.</p>

  </article>

  <article title="Hard Drivin'">

  <p>The V351 provides sideways mounted 5.25<rdq> drive bays. You can use one
  side of the case or the other. I picked the right hand side for my CD-ROM
  drive and floppy as this best fits my desk layout.</p>

  <p>I had a purge last year so only own a few floppy discs now. I was prepared
  to retire the floppy drive and fit a CD-ROM drive and a DVD-ROM drive in the
  two available bays. However when I booted the Iyonix without a floppy drive
  installed something as yet unknown would fail at boot and no <USB> devices would
  work.So I<rq>ve left it in place for now.</p>

  <p>The drives slide into the case on rails. There are screws supplied which
  match the rails instead of the normal M3 drive screws. An additional
  thumbscrew is provided to secure each drive.</p>

  <p>Since this is a small case, the data and power cables are a little fiddly
  once the drive is in place so it may be worthwhile to plug them in before
  slotting the drive into position.</p>

  </article>

  <article title="Jack Me Up">

  <p>The V351 has a front (well, side) IO port with <USB>, Firewire and audio
  connections. It took a bit of time to work out if the case<rq>s connectors for
  joining up the front connector panel would fit:</p>

  <ul> <li>Front <USB> ports &mdash; My Iyonix is fitted with an NEC
    &micro;PD720100A-based <PCI> card which provides two rear <USB> ports and two
    internal ports (upon closer investigation it turned out to have another
    spare internal port, too.) After a bit of circuit tracing I confirmed that
    the case connector matched exactly. However the connector had a blocked out
    pin. Should I chop the pin off of the <PCI> card<rq>s internal connector or
    drill out the blocked-off pin hole? I settled for the latter.</li>

    <li>Front AC<rq>97 audio &mdash; This connector looks like it ought to just
    join up. It has the same 2&times;5 block connector. But if you do connect it up
    the Iyonix loses its voice. It seems that the connectors are wired up
    differently. For now I<rq>ve decided that I can live without the front audio
    jacks until I can wire up an adaptor cable.</li> </ul>

  <captionedimage url="iyonix.case.photos/DSCF2934.JPG" dsc="fnord!">Interior.
  Blue card at rear is video. Green is <USB>. Flat floppy and <IDE> leads are used
  at this stage.</captionedimage>

  <p>The case also has HD audio and FireWire connectors which can<rq>t be used
  with the Iyonix.</p>

  <captionedimage url="iyonix.case.photos/DSCF2933.JPG" dsc="fnord!"><PSU>,
  motherboard, drives, installed.</captionedimage>

  </article>

  <article title="Discy Business">

  <p>The existing hard disc was noisy, so to cut this down I replaced the
  existing Maxtor 80G 3.5<rdq> <IDE> hard disc with a Samsung 160G 2.5<rdq> drive
  purchased from <eBuyer>.</p>

  <p>2.5<rdq> drives are intended for laptops and use a smaller connector than
  3.5<rdq> drives. It unifies the data and power signals so is wired differently
  from its bigger brother. To connect a 2.5<rdq> drive to a machine expecting a
  3.5<rdq> drive you need a small adaptor board. I ordered one from an <eBayUK>
  seller.</p>

  <p>Additionally the V351 drive bay uses a rail system with space for two
  stacked drives, where each drive sits on rubber grommets to stop any
  vibrations from the drive being transmitted through the case. The 2.5<rdq>
  drive<rq>s form factor is too small to fit onto the rails, so I fitted a
  2.5<rdq> to 3.5<rdq> drive mounting bracket kit purchased from an <eBayUK>
  seller.</p>

  <p>The rear of the drive bay has an 80mm fan fitted which after a bit of
  testing turned out to be redundant so was removed.</p>

  <p>To prepare the drive I configured it as a slave and connected it up
  alongside the existing drive, booted, formatted it to its full capacity using
  HForm and then copied all of my files across.</p>

  <captionedimage url="iyonix.case.photos/DSCF2944.JPG" dsc="fnord!">The bay is
  set up for a pair of 3.5<rdq> drives, so the 2.5<rdq> drive has a mounting
  bracket fitted. This doesn't provide an entirely satisfactory
  fit.</captionedimage>

  <p>As you might have predicted the <LFAU> on the new drive is
  <strong>huge</strong>, resulting in a lot of wastage. Do we care about
  wastage when our drives are this big?  I<rq>m not sure. Clares Micro Supplies
  Ltd. used to sell a utility called <dfn>BDFS</dfn> which would partition a
  single physical drive into multiple logical drives. Splitting the drive up
  would address the problem. I wonder if its author can be convinced to upgrade
  it for 32-bit RISC OS 5?</p>

  </article>

  <article title="Video Card Cooling Noise">

  <p>With the system reassembled and the hard disc noise addressed it became
  obvious that the biggest remaining source of noise was the video card<rq>s
  cooling fan emitting a high-pitched whine.</p>

  <p>To resolve the <ldq>pyjamas<rdq> reset problem I<rq>d, a couple of years
  previously, replaced its original GeForce 2 MX400 card with a GeForce FX5500
  model which has a small on-board fan. I had tried replacing the on-board fan]
  with a fanless northbridge heatsink, but it got too hot &mdash; even with the
  front 120mm fans blowing &mdash; so a fan mounted on the card is necessary.
  So I replaced the heatsink with a super-quiet fan copper <VGA> cooler from
  <QuietPC>. Unlike the stock cooler this can<rq>t be powered from the video
  card itself, so is instead connected up to a spare power rail from the
  <PSU>.</p>

  <captionedimage url="iyonix.case.photos/DSCF2940.JPG" dsc="fnord!">GeForce
  FX5500 with new copper fan and heatsink mounted on the CPU and individual
  copper heatsinks mounted on (pairs of) RAM chips. The red/blue twisty thing at
  the front is a tiny speaker.</captionedimage>

  <p>The <VGA> cooler came with copper stick-on mini heatsinks for cooling the
  card<rq>s RAM, so I applied those at the same time. Some were left over so
  they were put on the motherboard<rq>s main ICs.</p>

  <p>The card is barely audible now.</p>

  <captionedimage url="iyonix.case.photos/DSCF2950.JPG" dsc="fnord!">Spare
  heatsinks were  mounted on the three major chips.</captionedimage>

  </article>

  <article title="Round Round">

  <p>The front of the case holds two 120mm fans which circulate air through the
  case. The left hand fan was partly obscured with the standard <IDE> and floppy
  ribbon cables which join the motherboard at that point. </p>

  <p>To clear space allowing airflow to be less impeded, we can use rounded
  cables which contain all of the same connectors but in a stranded cable format
  which is easier to route.</p>

  <captionedimage url="iyonix.case.photos/DSCF2941.JPG" dsc="fnord!">Rounded
  floppy and <IDE> leads installed.</captionedimage>

  <p>I swapped the standard cables for a set of rounded leads, again ordered
  from <eBayUK>.</p>

  <captionedimage url="iyonix.case.photos/DSCF2951.JPG" dsc="fnord!"> I bought
  12" ones but with hindsight these are probably a few inches too
  long.</captionedimage>

  </article>

  <article title="All Together Now">

  <p>The Iyonix is now small enough to sit atop my other <PC> and so quiet that I
  can barely hear it.</p>

  <captionedimage url="iyonix.case.photos/DSCF2942.JPG" dsc="fnord!">Side
  view.</captionedimage>

  <captionedimage url="iyonix.case.photos/DSCF2967.JPG" dsc="fnord!">And
  another.</captionedimage>

  </article>

  </content>
  <footer>
</page>

