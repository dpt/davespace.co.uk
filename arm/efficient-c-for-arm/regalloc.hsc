<* $Id$ *>

<page heading="Register Allocation" rev="loops" cur="regalloc" fwd="func">
  <nav>
  <heading>
  <slide>
    <p>The compiler attempts to allocate a register to each local variable.</p>
    <p>It tries to use the same register for different local variables if the
    use of the variables does not overlap.</p>
    <p>When number of local variables exceeds number of available registers
    then the excess variables are stored on the stack.</p>
  </slide>
  <slide title="ii">
    <p>Such stacked variables are called <dfn>spilled</dfn> since they are
    written out to memory.</p>
    <p>Spilled variables are slow to access compared to variables allocated to
    registers.</p>
    <p>To implement a function efficiently, you need to:</p>
    <ul>
      <li>Minimise the number of spilled variables.</li>
      <li>Ensure that critical variables are stored in registers.</li>
    </ul>
  </slide>
  <slide title="AAPCS Registers">
  <table id="cores">
    <thead>
      <tr><th>Rn</th><th>Name</th><th>Usage under AAPCS</th></tr>
    </thead>
    <tbody>
      <tr><td>R0..3</td><td>A1..4</td><td>Argument registers. These hold the first four function arguments on a function call and the return value on a function return. A function may corrupt these registers and use them as general scratch registers within the function.</td></tr>
      <tr><td>R4..8</td><td>V1..5</td><td>General variable registers. The function must preserve the callee values of these registers.</td></tr>
      <tr><td>R9</td><td>V6 SB</td><td>General variable register. The function must preserve the callee value of this register except when compiling for read-write position independence (RWPI). Then R9 holds the static base address. This is the address of the read-write data.</td></tr>
      <tr><td>R10</td><td>V7 SL</td><td>General variable register. The function must preserve the callee value of this register except when compiling with stack limit checking. Then R10 holds the stack limit address.</td></tr>
      <tr><td>R11</td><td>V8 FP</td><td>General variable register. The function must preserve the callee value of this register except when compiling using a frame pointer. Only old versions of armcc use a frame pointer.</td></tr>
      <tr><td>R12</td><td>IP</td><td>A general scratch register that the function can corrupt. It is useful as a scratch register for function veneers or other intra-procedure call requirements.</td></tr>
      <tr><td>R13</td><td>SP</td><td>The stack pointer, pointing to the full descending stack.</td></tr>
      <tr><td>R14</td><td>LR</td><td>The link register. On a function call this holds the return address.</td></tr>
      <tr><td>R15</td><td>PC</td><td>The program counter.</td></tr>
    </tbody>
  </table>
  </slide>
  <slide title="iii">
    <p>R0..R12, R14 can hold variables.</p>
    <p>Must save R4..R11, R14 on the stack if using these registers.</p>
    <p>Compiler can assign 14 variables to registers without spillage.</p>
    <p>But some compilers use a fixed register e.g. R12 as scratch and never
    keep values in it.</p>
    <p>Complex expressions need intermediate working registers.</p>
    <p>Try to limit the inner loop of routines to at most 12 local
    variables.</p>
    <p>If the compiler does spill variables, it chooses which variables to swap
    out based on frequency of use.</p>
    <p>A variable used inside a loop counts multiple times.</p>
    <p>You can tell the compiler about important variables by using them within
    the innermost loop.</p>
  </slide>
  <commentary>
    <p>Variable lifetime analysis.</p>

    AAPCS

    <p>This is here for information. I don&rsquo;t expect people to read it
    all.</p>
    <ul>
      <li>APCS &rarr; ARM Procedure Calling Standard.</li>
      <li>ATPCS &rarr; ARM Thumb Procedure Calling Standard.</li>
      <li>AAPCS &rarr; ARM Architecture Procedure Calling Standard.</li>
    </ul>

    <p>We&rsquo;re talking about the inside of loops here, assuming no function
    calls.</p>
    <p>As soon as function calls are made we effectively lose six of the
    registers.</p>
    <p>Some platforms have additional restrictions. e.g. Palm OS 5 permanently
    reserves R9 for its use for all code.</p>

  </commentary>
  <footer>
  </heading>
</page>

