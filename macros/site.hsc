<* macros for www.davespace.co.uk *>

<* $Id$ *>

<* specify 'group' to have "group: heading" in page titles, else just "heading" *>
<* specify 'author', 'keywords', 'desc' for meta values *>
<* specify 'heading' for the page title *>
<* specify 'rev', 'cur', 'fwd' to fill out link rel navigation *>

<$macro masterpage group:string groupcssid:string author:string keywords:string
                   desc:string root:string logo:string heading:string
                   rev:string cur:string fwd:string>

<$define pagegroup:string/global="">
<$if cond=(set group)>
  <$let pagegroup=(group)>
</$if>

<$define pageroot:string/global="">
<$if cond=(set root)>
  <$let pageroot=(root)>
</$if>

<$define pagelogo:string/global="">
<$if cond=(set logo)>
  <$let pagelogo=(logo)>
<$else>
  <$let pagelogo=(pageroot + "img/logo.png")>
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
    <* the additional brackets here seem to be required *>
    <$if cond=((pagegroup <> "") and (pageheading <> ""))>
      <title>davespace.co.uk: <(pagegroup)>: <(pageheading)></title>
    <$elseif cond=(pagegroup <> "")>
      <title>davespace.co.uk: <(pagegroup)></title>
    <$elseif cond=(pageheading <> "")>
      <title>davespace.co.uk: <(pageheading)></title>
    <$else>
      <title>davespace.co.uk</title>
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
    <link rel="stylesheet" type="text/css" href=(pageroot + "style3/styles.css") title="default" />
    <link rel="index" href="index.html" />
    <$if cond=(nextpage <> "")>
      <link rel="next" href=(nextpage + ".html") />
    </$if>
    <$if cond=(previouspage <> "")>
      <link rel="prev" href=(previouspage + ".html") />
    </$if>
  </head>
  <$if cond=(set groupcssid)>
    <body id=(groupcssid)>
  <$else>
    <body>
  </$if>
</$macro>

<$macro /masterpage>
  </body>
</html>
</$macro>

<* a control to flip between pages *>
<$macro flipper>
<$if cond=((previouspage <> "") or (nextpage <> ""))>
<div id="flipper">
  <h1>Navigate</h1>
  <ul>
    <$if cond=(previouspage <> "")>
      <li id="prev"><a href=(previouspage + ".html")><span>Previous</span></a></li>
    </$if>
    <$if cond=(nextpage <> "")>
      <li id="next"><a href=(nextpage + ".html")><span>Next</span></a></li>
    </$if>
  </ul>
</div>
</$if>
</$macro>

<$macro clink dst:string title:string>
<$if cond=(currentpage = dst)>
  <li class="current"><(title)></li>
<$else>
  <li><a href=(dst + ".html")><(title)></a></li>
</$if>
</$macro>

<$macro sidebar>
<div id="sidebar">
  <h1>Contents</h1>
  <contents>
</div>
</$macro>

<$macro header title:string>
<div id="header">
  <div id="pagetopshadow"></div>
  <h1><a href=(pageroot + "index.html")><span>DaveSpace</span></a></h1>
  <ul id="tabs">
    <li id="hometab"><a href=(pageroot + "index.html")><span>Home</span></a></li>
    <li id="riscostab"><a href=(pageroot + "risc.os/index.html")><span>RISC&nbsp;OS</span></a></li>
    <li id="armtab"><a href=(pageroot + "arm/index.html")><span>ARM</span></a></li>
    <li id="pythontab"><a href=(pageroot + "python/index.html")><span>Python</span></a></li>
  </ul>
</div>
</$macro>

<$macro content /close title:string>
<div id="content">
  <$if cond=(set title)>
    <h1><(title)></h1>
  <$else>
    <$if cond=(pagegroup <> "")>
      <h1><a href="index.html"><(pagegroup)></a></h1>
    </$if>
    <$if cond=(pageheading <> "")>
      <h2><(pageheading)></h2>
    </$if>
  </$if>
  <$content>
</div>
</$macro>

<$macro article /close title:string>
<$if cond=(set title)>
  <h2><(title)></h2>
</$if>
<div class="article">
  <$content>
</div>
</$macro>

<$macro format /close>
<p class="format"><code><$content></code></p>
</$macro>

<$macro diagram src:string alt:string>
<p class="diagram">
  <a href=("img/dia/lg/"+src)><img src=("img/dia/"+src) alt=(alt) /></a>
</p>
</$macro>

<* packed tightly due to diagnostic about space in A being produced. *>
<$macro captionedimage /close url:string bigurl:string dsc:string>
<div class="captionedimage">
  <$if cond=(set bigurl)><a href=(bigurl)></$if><img src=(url) alt=(dsc) /><$if cond=(set bigurl)></a></$if>
  <p class="caption"><$content></p>
</div>
</$macro>

<$macro uncaptionedimage url:string bigurl:string dsc:string>
<div class="captionedimage"> <* style name is misleading now *>
  <$if cond=(set bigurl)><a href=(bigurl)></$if><img src=(url) alt=(dsc) /><$if cond=(set bigurl)></a></$if>
</div>
</$macro>

<$macro downloadbox /close>
<div id="downloadbox">
  <h2>Downloads</h2>
  <ul>
    <$content>
  </ul>
</div>
</$macro>

<$macro download /close href:string>
<li><a href=(href)><$content></a></li>
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

<$macro comments>
<article title="Comments">
  <p>If you have any suggestions for improving these pages you can email me
  at webmaster at davespace dot co dot uk.</p>
</article>
</$macro>

<$macro w3c>
<div id="w3c">
  <p><a href="http://validator.w3.org/check/referer"><img src=(pageroot + "img/w3c.xhtml.png") alt="Valid XHTML" /></a> <a href="http://jigsaw.w3.org/css-validator/check/referer"><img src=(pageroot + "img/w3c.css.png") alt="Valid CSS" /></a></p>
</div>
</$macro>

<$macro footer>
<flipper>
<$define _ttf:string=(HSC.Format.Time)>
<div id="footer">
  <ul>
    <li class="date">Last modified on <$let HSC.Format.Time=(_ttf)><(GetTime())></li>
    <li>by David Thomas, &copy; <$let HSC.Format.Time="%Y"><(GetTime())></li>
  </ul>
  <w3c>
</div>
</$macro>

<* The following are packed tightly due to PRE being sensitive to any spaces in the input. *>

<* external links *>
<$macro ext /close url:string>
<a class="external" href=(url)><$content> <span>(external link)</span></a>
</$macro>

<* wikipedia links *>
<$macro wiki /close subj:string>
<a class="external" href=("http://en.wikipedia.org/wiki/" + subj)><$content></a>
</$macro>

<$macro date>
<$define _ttf:string=(HSC.Format.Time)>
<div id="date">
  <$let HSC.Format.Time="%A, %d %B %Y"><(GetTime())>
</div>
</$macro>

<* symbols *>

<$macro ndash>&ndash;</$macro>
<$macro mdash>&mdash;</$macro>

<$macro lq>&lsquo;</$macro>
<$macro rq>&rsquo;</$macro>
<$macro ldq>&ldquo;</$macro>
<$macro rdq>&rdquo;</$macro>

<* definition lists *>

<* dd *>
<$macro ddd><dd></$macro>

<* li *>
<$macro lid><li></$macro>

