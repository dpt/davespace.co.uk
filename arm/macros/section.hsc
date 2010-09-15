<* macros for the arm pages *>

<* $Id$ *>

<* The following are packed tightly due to PRE being sensitive to any spaces in the input. *>

<$macro csyntax /close class:string>
  <$export file="perlinput" data=(HSC.Content)>
  <$if cond=(set class)><pre class=("routine " + class)><$else><pre class=("routine")></$if><$exec command="perl ../csyntaxcolour.pl < perlinput" include></pre>
</$macro>

<$macro armsyntax /close class:string>
  <$export file="perlinput" data=(HSC.Content)>
  <$if cond=(set class)><pre class=("routine " + class)><$else><pre class=("routine")></$if><$exec command="perl ../armsyntaxcolour.pl < perlinput" include></pre>
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

<$macro GCC>
<abbr title="GNU C Compiler">GCC</abbr>
</$macro>

<$macro HLL>
<abbr title="High Level Language">HLL</abbr>
</$macro>

<$macro IP>
<abbr title="Intellectual Property">IP</abbr>
</$macro>

<$macro IRQ>
<abbr title="Interrupt Request">IRQ</abbr>
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

<$macro MAC>
<acronym title="Multiply-Accumulate">MAC</acronym>
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

