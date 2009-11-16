<* macros for the entire site *>

<* $Id$ *>

<$macro masterpage group:string author:string keywords:string desc:string heading:string rev:string cur:string fwd:string>

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
    <title><(group)>: <(pageheading)></title>
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
    <link rel="stylesheet" type="text/css" href="../styles.css" title="default" />
    <link rel="index" href="index.html" />
    <$if cond=(fwd <> "")>
      <link rel="next" href=(fwd + ".html") />
    </$if>
    <$if cond=(rev <> "")>
      <link rel="prev" href=(rev + ".html") />
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

<$macro mastercontents>
<div id="contents">
</$macro>

<$macro /mastercontents>
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

<$macro heading>
<div id="content">
  <h1><a href="index.html"><(pagegroup)></a></h1>
  <h2><(pageheading)></h2>
  <div id="masthead"><a href="../index.html"><img src="../img/home.png" width="16" height="16" alt="Home" /></a></div>
</$macro>

<$macro /heading>
</div>
</$macro>

<$macro slide title:string>
<$if cond=(set title)>
  <h2><(title)></h2>
</$if>
<div class="slide">
</$macro>

<$macro /slide>
</div>
</$macro>

<$macro format>
<p class="format"><code>
</$macro>

<$macro /format>
</code></p>
</$macro>

<$macro diagram src:string alt:string width:string height:string>
<p class="diagram">
  <a href=("img/dia/lg/"+src)><img src=("img/dia/"+src) alt=(alt) width=(width) height=(height) /></a>
</p>
</$macro>

<$macro examples>
<h3>Examples</h3>
<div class="examples">
</$macro>

<$macro /examples>
</div>
</$macro>

<$macro commentary>
<h3>Comments</h3>
<div class="commentary">
</$macro>

<$macro /commentary>
</div>
</$macro>

<$macro note>
<div class="note">
  <| <p id="close"><a href="#" onclick="(function(){var x=document.getElementById('close').parentElement;x.parentElement.removeChild(x);})();"><span>Close this note.</span></a></p> |>
  <p>These pages are a work in progress. I am currently converting them from
  their original PowerPoint format into HTML. References may still remain to my
  employer's technology and environment which will be pruned or replaced in due
  course.</p>
  <p>If you have any suggestions to improve it you can email me at <em>dave at
  davespace dot co dot uk</em>.</p>
</div>
</$macro>

<$macro footer>
<div id="footer">
  <$define _ttf:string=(HSC.Format.Time)>
  <$let HSC.Format.Time="%Y">
  <p>by David Thomas, &copy; <(GetTime())>.<br />
  <$let HSC.Format.Time=(_ttf)>
  Last modified at <(GetTime())>.</p>
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

