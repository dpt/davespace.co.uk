<* macros for the root page(s) only *>

<* $Id$ *>

<$macro page HEADING:string REV:string CUR:string FWD:string>

<* convert undefined things into empty strings so we can pass them *>
<$if cond=(not set heading)>
  <$let heading="">
</$if>

<$if cond=(not set rev)>
  <$let rev="">
</$if>

<$if cond=(not set cur)>
  <$let cur="">
</$if>

<$if cond=(not set fwd)>
  <$let fwd="">
</$if>

<masterpage groupcssid="index"
            author="David Thomas"
            keywords="davespace, david thomas, dave thomas"
            desc="David Thomas's website."
            root=""
            heading=(HEADING) rev=(REV) cur=(CUR) fwd=(FWD)>
</$macro>

<* ### google verify thing, favicons, *>
<* ### body id *>



<$macro /page>
</masterpage>
</$macro>

<$macro contents>
<h2>RISC&nbsp;OS</h2>
<h3>Software</h3>
<ul>
  <clink dst="risc.os/photofiler"  title="PhotoFiler">
  <clink dst="risc.os/privateeye"  title="PrivateEye">
  <clink dst="risc.os/toolbar"     title="Toolbar">
  <clink dst="risc.os/quickfiler"  title="QuickFiler">
</ul>
<h3>Other stuff</h3>
<ul>
  <clink dst="risc.os/iyonix.case" title="Re-case an Iyonix">
</ul>

<h2>ARM</h2>
<ul>
  <clink dst="arm/introduction-to-arm/index" title="Introduction to ARM">
  <clink dst="arm/efficient-c-for-arm/index" title="Efficient C for ARM">
</ul>

<h2>Python</h2>
<ul>
  <clink dst="python/rerename"          title="rerename.py">
  <clink dst="python/remove-duplicates" title="remove-duplicates.py">
  <clink dst="python/resetjpegdpi"      title="resetjpegdpi.py">
</ul>
</$macro>

