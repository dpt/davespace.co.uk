<* macros for the python page(s) only *>

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

<masterpage group="Random Python scripts"
            groupcssid="python"
            author="David Thomas"
            keywords="Python, scripts, utilities"
            desc="Python scripts"
            root="../"
            heading=(HEADING) rev=(REV) cur=(CUR) fwd=(FWD)>
</$macro>

<* #### google verify thing, favicons, *>
<* #### body id *>

<$macro /page>
</masterpage>
</$macro>

<$macro contents>
<ul>
  <clink dst="rerename"          title="rerename.py">
  <clink dst="remove-duplicates" title="remove-duplicates.py">
  <clink dst="resetjpegdpi"      title="resetjpegdpi.py">
</ul>
</$macro>

