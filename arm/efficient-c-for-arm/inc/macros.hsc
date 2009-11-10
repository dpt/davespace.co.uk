<* $Id$ *>

<$macro page section:string heading:string rev:string cur:string fwd:string>
<$define pagesection:string/global="">
<$if cond=(set section)>
  <$let pagesection=(section)>
</$if>
<$define pageheading:string/global="">
<$if cond=(set heading)>
  <$let pageheading=(heading)>
</$if>
<$define previouspage:string/global="">
<$if cond=(set rev)>
  <$let previouspage=(rev)>
</$if>
<$define currentpage:string/global="">
<$if cond=(set cur)>
  <$let currentpage=(cur)>
</$if>
<$define nextpage:string/global="">
<$if cond=(set fwd)>
  <$let nextpage=(fwd)>
</$if>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<* 'xml:lang="en"' is barfed at even in XHTML mode *>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Efficient C for ARM: <(pageheading)></title>
    <meta name="author" content="David Thomas" />
    <meta name="keywords" content="programming, assembler, arm" />
    <meta name="description" content="How to write efficient C code for the ARM processor." />
    <link rel="stylesheet" type="text/css" href="../styles.css" title="default" />
    <link rel="index" href="index.html" />
    <$if cond=(set fwd)>
      <link rel="next" href=(fwd + ".html") />
    </$if>
    <$if cond=(set rev)>
      <link rel="prev" href=(rev + ".html") />
    </$if>
  </head>
  <body>
</$macro>

<$macro /page>
  </body>
</html>
</$macro>

<$macro contents>
<div id="contents">
  <ul>
    <li>Efficiency
    <ul>
      <clink dst="efficiency" title="Efficiency">
      <clink dst="before-tuning" title="Before Tuning...">
    </ul>
    </li>
    <li>Optimising
    <ul>
      <clink dst="optimising" title="Optimising">
      <clink dst="profilers" title="Profilers">
    </ul>
    </li>
    <li>Stuff That's Slow on ARM
    <ul>
      <clink dst="slow" title="Stuff That's Slow on ARM">
      <clink dst="fp" title="Floating Point">
      <clink dst="division" title="Division">
      <clink dst="unaligned" title="Unaligned Data Access">
    </ul>
    </li>
    <li>Basic Optimisations
    <ul>
      <clink dst="bools" title="Bools">
      <clink dst="bitfields" title="Bitfields">
      <clink dst="padding" title="Structure Padding">
      <clink dst="hoisting" title="Hoisting">
      <clink dst="datadrive" title="Data Drive">
      <clink dst="indexing" title="Avoid Array Indexing">
      <clink dst="aliasing" title="Pointer Aliasing">
      <clink dst="chains" title="Pointer Chains">
      <clink dst="sentinels" title="Sentinels">
      <clink dst="unrolling" title="Loop Unrolling">
    </ul>
    </li>
    <li>Targeted Optimisations
    <ul>
      <clink dst="datatypes" title="C Data Types">
      <clink dst="memaccess" title="Memory Access">
      <clink dst="localvar" title="Local Variable Types">
      <clink dst="funcarg" title="Function Argument Types">
      <clink dst="varaddr" title="Taking A Variable's Address">
      <clink dst="loops" title="Loops">
      <clink dst="regalloc" title="Register Allocation">
      <clink dst="func" title="Function Calls">
      <clink dst="smallfunc" title="Small Functions">
      <clink dst="biasing" title="Biasing Values">
      <clink dst="unsignedrange" title="Unsigned Ranges">
      <clink dst="baseptr" title="Base Pointer Optimisation">
    </ul>
    </li>
    <li>References
    <ul>
      <clink dst="references" title="References">
    </ul>
    </li>
  </ul>
</div>
</$macro>

<$macro heading>
<div id="content">
  <h1><a href="index.html">Efficient C for <acronym title="Advanced RISC Machine">ARM</acronym></a></h1>
  <h2><(pageheading)></h2>
  <div id="bgtop"></div>
</$macro>

<$macro /heading>
</div>
</$macro>

