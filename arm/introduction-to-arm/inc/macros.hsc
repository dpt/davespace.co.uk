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
    <title>Introduction to ARM: <(pageheading)></title>
    <meta name="author" content="David Thomas" />
    <meta name="keywords" content="programming, assembler, arm" />
    <meta name="description" content="An introduction to programming in ARM assembler." />
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
    <li>Rationale
    <ul>
      <clink dst="why-learn" title="Why Learn Assembly?">
      <clink dst="not-trivial" title="Not A Trivial Mapping">
    </ul>
    </li>
    <li>ARM Assembly Language
    <ul>
      <clink dst="instruction-sets" title="Instruction Sets">
      <clink dst="registers" title="Registers">
      <clink dst="pc" title="Program Counter">
      <clink dst="syntax" title="Instruction Syntax">
      <clink dst="organisation" title="Organisation">
      <clink dst="movement" title="Movement">
      <clink dst="arithmetic" title="Arithmetic">
      <clink dst="logical" title="Logical">
      <clink dst="compare" title="Compare">
      <clink dst="barrel-shifter" title="Barrel Shifter">
      <clink dst="operand2" title="Operand2">
      <clink dst="immediates" title="Immediate Values">
      <clink dst="branch" title="Branch">
      <clink dst="conditional" title="Conditional Execution">
      <clink dst="multiply" title="Multiply">
      <clink dst="data-transfer" title="Data Transfer">
      <clink dst="addressing" title="Addressing Modes">
      <clink dst="multiple-data-transfer" title="Multiple Register Data Transfer">
      <clink dst="stack" title="The Stack">
      <clink dst="chain" title="A Call Chain">
    </ul>
    </li>
    <li>Worked Examples
    <ul>
      <clink dst="task-one" title="Task One">
      <clink dst="task-two" title="Task Two">
    </ul>
    </li>
    <li>Thumb
    <ul>
      <clink dst="thumb" title="Thumb">
      <clink dst="interworking" title="Interworking">
      <clink dst="thumb-example" title="Thumb Example">
      <clink dst="thumb-2" title="Thumb-2">
    </ul>
    </li>
    <li>ARM &amp; Its Architectures
    <ul>
      <clink dst="arm-ltd" title="ARM Ltd.">
      <clink dst="arm-tools" title="Tools">
      <clink dst="arm-apps" title="Applications">
      <clink dst="arm-arch" title="ARM Architecture">
      <clink dst="arm-arch123" title="Early Architectures">
      <clink dst="arm-arch4" title="Architecture 4">
      <clink dst="arm-arch5" title="Architecture 5">
      <clink dst="arm-arch6" title="Architecture 6">
      <clink dst="arm-arch7" title="Architecture 7">
      <clink dst="arm-cores" title="Summary of current ARM cores">
      <clink dst="arm-inside" title="What's Inside Various Devices?">
      <clink dst="arm-test" title="Test">
    </ul>
    </li>
    <li>References
    <ul>
      <clink dst="books" title="Books">
    </ul>
    </li>
  </ul>
</div>
</$macro>

<$macro heading>
<div id="content">
  <h1><a href="index.html">Introduction to <acronym title="Advanced RISC Machine">ARM</acronym></a></h1>
  <h2><(pageheading)></h2>
  <div id="bgtop"></div>
</$macro>

<$macro /heading>
</div>
</$macro>

