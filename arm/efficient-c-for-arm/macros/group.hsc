<* macros for the efficient c for arm course only *>

<* $Id$ *>

<$macro page HEADING:string REV:string CUR:string FWD:string>

<* convert undefined things into empty strings so we can pass them *>
<$if cond=(not set rev)>
  <$let rev="">
</$if>

<$if cond=(not set cur)>
  <$let cur="">
</$if>

<$if cond=(not set fwd)>
  <$let fwd="">
</$if>

<masterpage group="Efficient C for ARM"
            groupcssid="arm"
            author="David Thomas"
            keywords="Assembler, Assembly, Programming, ARM, CPU"
            desc="How to write efficient C code for the ARM processor."
            root="../../"
            logo="../img/logo.png"
            heading=(HEADING) rev=(REV) cur=(CUR) fwd=(FWD)>
</$macro>

<$macro /page>
</masterpage>
</$macro>

<$macro contents>
<h2>Efficiency</h2>
<ul>
  <clink dst="efficiency" title="Efficiency">
  <clink dst="before-tuning" title="Before Tuning...">
</ul>
<h2>Optimising</h2>
<ul>
  <clink dst="optimising" title="Optimising">
  <clink dst="profilers" title="Profilers">
</ul>
<h2>Stuff That&rsquo;s Slow on ARM</h2>
<ul>
  <clink dst="slow" title="Stuff That&rsquo;s Slow on ARM">
  <clink dst="fp" title="Floating Point">
  <clink dst="division" title="Division">
  <clink dst="unaligned" title="Unaligned Data Access">
</ul>
<h2>Basic Optimisations</h2>
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
<h2>Targeted Optimisations</h2>
<ul>
  <clink dst="datatypes" title="C Data Types">
  <clink dst="memaccess" title="Memory Access">
  <clink dst="localvar" title="Local Variable Types">
  <clink dst="funcarg" title="Function Argument Types">
  <clink dst="varaddr" title="Taking A Variable&rsquo;s Address">
  <clink dst="loops" title="Loops">
  <clink dst="regalloc" title="Register Allocation">
  <clink dst="func" title="Function Calls">
  <clink dst="smallfunc" title="Small Functions">
  <clink dst="biasing" title="Biasing Values">
  <clink dst="unsignedrange" title="Unsigned Ranges">
  <clink dst="baseptr" title="Base Pointer Optimisation">
</ul>
<h2>References</h2>
<ul>
  <clink dst="references" title="References">
</ul>
</$macro>
