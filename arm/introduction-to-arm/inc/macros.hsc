<* macros for the introduction to arm course pages only *>

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

<masterpage group="Introduction to ARM"
            author="David Thomas"
            keywords="Assembler, Assembly, Programming, ARM, CPU"
            desc="An introduction to programming in ARM assembly language."
            heading=(HEADING) rev=(REV) cur=(CUR) fwd=(FWD)>
</$macro>

<$macro /page>
</masterpage>
</$macro>

<$macro contents>
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
    <clink dst="arm-inside" title="What&rsquo;s Inside Various Devices?">
    <clink dst="arm-test" title="Test">
  </ul>
  </li>
  <li>References
  <ul>
    <clink dst="books" title="Books">
  </ul>
  </li>
</ul>
</$macro>

