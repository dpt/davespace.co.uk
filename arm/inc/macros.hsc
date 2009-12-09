<* macros for the entire site *>

<* $Id$ *>

<* specify 'group' to have "group: heading" in page titles, else just "heading" *>
<* specify 'author', 'keywords', 'desc' for meta values *>
<* specify 'heading' for the page title *>
<* specify 'rev', 'cur', 'fwd' to fill out link rel navigation *>

<$macro masterpage group:string author:string keywords:string desc:string
        root:string heading:string rev:string cur:string fwd:string>

<$define pagegroup:string/global="">
<$if cond=(set group)>
  <$let pagegroup=(group)>
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
    <$if cond=(pagegroup <> "")>
      <title><(pagegroup)>: <(pageheading)></title>
    <$else>
      <title><(pageheading)></title>
    </$if>
    <$if cond=(author <> "")>
      <meta name="author" content=(author) />
    </$if>
    <$if cond=(keywords <> "")>
      <meta name="keywords" content=(keywords) />
    </$if>
    <$if cond=(desc <> "")>
      <meta name="description" content=(desc) />
    </$if>
    <* would like to resolve stylesheet location better *>
    <link rel="stylesheet" type="text/css" href=(root + "styles.css") title="default" />
    <link rel="index" href="index.html" />
    <$if cond=(nextpage <> "")>
      <link rel="next" href=(nextpage + ".html") />
    </$if>
    <$if cond=(previouspage <> "")>
      <link rel="prev" href=(previouspage + ".html") />
    </$if>
  </head>
  <body>
</$macro>

<$macro /masterpage>
  </body>
</html>
</$macro>

<* a control to flip between pages *>
<$macro flipper>
<div id="flipper">
  <$if cond=(previouspage <> "" or nextpage <> "")>
  <ul>
    <$if cond=(previouspage <> "")>
      <li id="prev"><a href=(previouspage + ".html")>Previous</a></li>
    </$if>
    <$if cond=(nextpage <> "")>
      <li id="next"><a href=(nextpage + ".html")>Next</a></li>
    </$if>
  </ul>
  </$if>
</div>
</$macro>

<$macro mastercontents /close>
<div id="contents">
<$content>
</div>
</$macro>

<$macro clink dst:string title:string>
<$if cond=(currentpage = dst)>
  <li class="current"><(title)></li>
<$else>
  <li><a href=(dst + ".html")><(title)></a></li>
</$if>
</$macro>

<$macro w3c>
<div id="w3c">
  <p><a href="http://validator.w3.org/check/referer"><img src="../img/w3c.xhtml.png" alt="Valid XHTML" width="80" height="15" /></a> <a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../img/w3c.css.png" alt="Valid CSS" width="80" height="15" /></a></p>
</div>
</$macro>

<$macro nav>
<div id="nav">
  <flipper>
  <mastercontents>
    <contents>
  </mastercontents>
  <w3c>
</div>
</$macro>

<$macro heading /close>
<div id="masthead"><a href="../index.html"><img src="../img/logo.png" width="104" height="132" alt="Home" /></a></div>
<div id="content">
  <h1><a href="index.html"><(pagegroup)></a></h1>
  <h2><(pageheading)></h2>
<$content>
</div>
</$macro>

<$macro slide /close title:string>
<$if cond=(set title)>
  <h2><(title)></h2>
</$if>
<div class="slide">
<$content>
</div>
</$macro>

<$macro format /close>
<p class="format"><code><$content></code></p>
</$macro>

<$macro diagram src:string alt:string width:string height:string>
<p class="diagram">
  <a href=("img/dia/lg/"+src)><img src=("img/dia/"+src) alt=(alt) width=(width) height=(height) /></a>
</p>
</$macro>

<$macro examples /close>
<h3>Examples</h3>
<div class="examples">
<$content>
</div>
</$macro>

<$macro before /close>
<div class="before">
<$content>
</div>
</$macro>

<$macro after /close>
<div class="after">
<$content>
</div>
</$macro>

<$macro commentary /close>
<h3>Remarks</h3>
<div class="commentary">
<$content>
</div>
</$macro>

<* The following macro is not presently used. *>

<$macro note>
<div class="note">
  <| <p id="close"><a href="#" onclick="(function(){var x=document.getElementById('close').parentElement;x.parentElement.removeChild(x);})();"><span>Close this note.</span></a></p> |>
  <p>These pages are a work in progress. I am currently converting them from
  their original PowerPoint format into HTML. References may still remain to my
  employer&rsquo;s technology and environment which will be pruned or replaced
  in due course.</p>
  <p>If you have any suggestions to improve it you can email me at <em>dave at
  davespace dot co dot uk</em>.</p>
</div>
</$macro>

<$macro footer>
<$define _ttf:string=(HSC.Format.Time)>
<div id="footer">
  <ul>
    <li class="date">Last modified on <$let HSC.Format.Time=(_ttf)><(GetTime())></li>
    <li>by David Thomas, &copy; <$let HSC.Format.Time="%Y"><(GetTime())></li>
  </ul>
</div>
</$macro>

<* The following are packed tightly due to PRE being sensitive to any spaces in the input. *>

<$macro csyntax /close class:string>
  <$export file="perlinput" data=(HSC.Content)>
  <$if cond=(set class)><pre class=("routine " + class)><$else><pre class=("routine")></$if><$exec command="perl ..\csyntaxcolour.pl < perlinput" include></pre>
</$macro>

<$macro armsyntax /close class:string>
  <$export file="perlinput" data=(HSC.Content)>
  <$if cond=(set class)><pre class=("routine " + class)><$else><pre class=("routine")></$if><$exec command="perl ..\armsyntaxcolour.pl < perlinput" include></pre>
</$macro>

<* external links *>
<$macro ext /close url:string>
<a class="external" href=(url)><$content></a>
</$macro>

<* wikipedia links *>
<$macro wiki /close subj:string>
<a class="external wikipedia" href=("http://en.wikipedia.org/wiki/" + subj)><$content></a>
</$macro>

<* symbols *>

<$macro ndash>
&ndash;
</$macro>

<$macro mdash>
&mdash;
</$macro>

<* definition lists *>

<* dd + ndash *>
<$macro ddd>
<dd class="dash"><ndash>&#x20;
</$macro>

<* li + ndash *>
<$macro lid>
<li class="dash"><ndash>&#x20;
</$macro>

<* shortcuts *>

<$macro ARMLtd>
ARM Ltd.
</$macro>

<* abbreviations and acronyms *>

<$macro AAPCS>
<abbr title="ARM Architecture Procedure Calling Standard">AAPCS</abbr>
</$macro>

<$macro ADS>
<abbr title="ARM Developer Suite">ADS</abbr>
</$macro>

<$macro ALU>
<abbr title="Arithmetic Logic Unit">ALU</abbr>
</$macro>

<$macro ARM>
<acronym title="Advanced RISC Machine">ARM</acronym>
</$macro>

<$macro ARMCC>
<acronym title="ARM C Compiler">ARMCC</acronym>
</$macro>

<$macro ARMv4>
<acronym title="ARM Architecture v4">ARMv4</acronym>
</$macro>

<$macro ARMv4T>
<acronym title="ARM Architecture v4 with Thumb">ARMv4T</acronym>
</$macro>

<$macro ARMv5E>
<acronym title="ARM Architecture v5 with enhanced instructions">ARMv5E</acronym>
</$macro>

<$macro ARMv5>
<acronym title="ARM Architecture v5">ARMv5</acronym>
</$macro>

<$macro ARMv5T>
<acronym title="ARM Architecture v5 with Thumb">ARMv5T</acronym>
</$macro>

<$macro ARMv6>
<acronym title="ARM Architecture v6">ARMv6</acronym>
</$macro>

<$macro ASCII>
<acronym title="American Standard Code for Information Interchange">ASCII</acronym>
</$macro>

<$macro BASIC>
<acronym title="Beginners&rsquo; All-Purpose Symbolic Instruction Code">BASIC</acronym>
</$macro>

<$macro BBC>
<abbr title="British Broadcasting Corporation">BBC</abbr>
</$macro>

<$macro BREW>
<acronym title="Binary Runtime Environment for Wireless">BREW</acronym>
</$macro>

<$macro CPSR>
<abbr title="Current Program Status Register">CPSR</abbr>
</$macro>

<$macro CPU>
<abbr title="Central Processing Unit">CPU</abbr>
</$macro>

<$macro DBX>
<abbr title="Direct Bytecode eXecution">DBX</abbr>
</$macro>

<$macro DMIPS>
<acronym title="Dhrystone MIPS">DMIPS</acronym>
</$macro>

<$macro DSP>
<abbr title="Digital Signal Processing">DSP</abbr>
</$macro>

<$macro IP>
<abbr title="Intellectual Property">IP</abbr>
</$macro>

<$macro IRQ>
<abbr title="Interrupt Request">IRQ</abbr>
</$macro>

<$macro GCC>
<abbr title="GNU C Compiler">GCC</abbr>
</$macro>

<$macro ISA>
<acronym title="Instruction Set Architecture">ISA</acronym>
</$macro>

<$macro LR>
<abbr title="Link Register">LR</abbr>
</$macro>

<$macro NOP>
<acronym title="No Operation">NOP</acronym>
</$macro>

<$macro MIPS>
<acronym title="Million Instructions Per Second">MIPS</acronym>
</$macro>

<$macro PC>
<abbr title="Program Counter">PC</abbr>
</$macro>

<$macro PDA>
<abbr title="Personal Digital Assistant">PDA</abbr>
</$macro>

<$macro RAM>
<acronym title="Random Access Memory">RAM</acronym>
</$macro>

<$macro RISC>
<acronym title="Reduced Instruction Set Computer">RISC</acronym>
</$macro>

<$macro RVCT>
<abbr title="RealView Compiler Tools">RVCT</abbr>
</$macro>

<$macro RVDS>
<abbr title="RealView Developer Suite">RVDS</abbr>
</$macro>

<$macro SIMD>
<acronym title="Single Instruction, Multiple Data">SIMD</acronym>
</$macro>

<$macro SDT>
<abbr title="Software Development Toolkit">SDT</abbr>
</$macro>

<$macro SP>
<abbr title="Stack Pointer">SP</abbr>
</$macro>

<$macro SWI>
<acronym title="Software Interrupt">SWI</acronym>
</$macro>

<$macro UAL>
<abbr title="Unified Assembler Language">UAL</abbr>
</$macro>

<$macro UK>
<abbr title="United Kingdom">UK</abbr>
</$macro>

<$macro VFP>
<abbr title="Vector Floating Point">VFP</abbr>
</$macro>

