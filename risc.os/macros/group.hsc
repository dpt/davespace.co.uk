<* macros for the risc.os pages only *>

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

<masterpage group="Software for RISC&nbsp;OS"
            groupcssid="riscos"
            author="David Thomas"
            keywords="RISC OS"
            desc="RISC OS stuff."
            root="../"
            heading=(HEADING) rev=(REV) cur=(CUR) fwd=(FWD)>
</$macro>

<$macro /page>
</masterpage>
</$macro>

<$macro contents>
<ul>
  <clink dst="photofiler"  title="PhotoFiler">
  <clink dst="privateeye"  title="PrivateEye">
  <clink dst="toolbar"     title="Toolbar">
  <clink dst="quickfiler"  title="QuickFiler">
  <* clink dst="iyonix.case" title="Replacing an Iyonix<rq>s Case" *>
</ul>
</$macro>

