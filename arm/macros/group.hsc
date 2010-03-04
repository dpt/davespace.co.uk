<* macros for the arm page(s) only *>

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

<masterpage group="ARM Assembly Language"
            groupcssid="arm"
            author="David Thomas"
            keywords="Assembler, Assembly, Programming, ARM, CPU"
            desc="ARM training courses"
            root="../"
            heading=(HEADING) rev=(REV) cur=(CUR) fwd=(FWD)>
</$macro>

<$macro /page>
</masterpage>
</$macro>

<$macro contents>
<ul>
  <clink dst="introduction-to-arm/index" title="Introduction to ARM">
  <clink dst="efficient-c-for-arm/index" title="Efficient C for ARM">
</ul>
</$macro>

