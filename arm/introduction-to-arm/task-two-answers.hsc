<* $Id$ *>

<page heading="Task Two Answers">
  <nav>
  <heading>
  <slide>
  <p>C test shell:</p>
  <csyntax>#include &lt;stdio.h&gt;

extern int factorial(int N);

int main(void)
{
    int i;

    /* The largest factorial we can store in an int,
     * or an ARM register, is 12! or 479,001,600. So
     * loop from 0..12. */
    for (i = 0; i &lt; 13; i++)
        printf("The factorial of %d is %d.\n", i, factorial(i));
}</csyntax>
<p>Assembler factorial routine (Using ARM&rsquo;s assembler format):</p>
<armsyntax>      AREA    |.text|, CODE, READONLY

;   int factorial(int N);

    EXPORT  factorial

factorial               ; On entry, N is stored in R0.
    MOVS    r1, r0      ; R1 is our loop counter. Copy N to R1 and test.
    MOVEQ   pc, r14     ; If N was zero, exit.
loop
    SUBS    r1, r1, #1  ; Decrement and test the loop counter.
    MULNE   r0, r1, r0  ; Multiply, if counter is non-zero.
    BNE     loop        ; Loop, if counter is non-zero.
    MOV     pc, r14     ; Return with result in R0.

    END</armsyntax>
  </slide>
  <footer>
  </heading>
</page>

