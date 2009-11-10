<* $Id$ *>

<page heading="Task One" rev="chain" cur="task-one" fwd="task-two">
  <nav>
  <heading>
  <slide title="Mystery Routine">
    <p>At this point in the presentation we stop to try out a couple of tasks.
    These help us put together the information just laid out.</p>
    <p><em>The original tasks used ARM Developer Suite as the environment. All
    of the assembler examples given in the presentation use armasm format. For
    now, if you're using a different environment you will have to convert the
    assembler to the correct format.</em></p>

<csyntax>#include &lt;stdio.h&gt;

extern int mystery(int); /* mystery assembler routine */

int main(void)
{
    static const char str[] = "Hello, World!";

    const int len = sizeof(str) / sizeof(str[0]);
    char      newstr[len];
    int       i;

    for (i = 0; i &lt; len; i++)
        newstr[i] = mystery(str[i]);

    printf("%s\n", newstr);

    return 0;
}</csyntax>

<armsyntax>    AREA    |.text|, CODE, READONLY

    EXPORT  mystery

mystery
    SUB     r1, r0, #'A'
    CMP     r1, #'Z' - 'A'
    ADDLS   r0, r0, #'a' - 'A'
    MOV     pc, r14

    END</armsyntax>

    <p>It's a "mystery" assembly language routine.</p>

    <ul>
      <li>What does it do?</li>
      <li>It should be obvious that it's doing some sort of character
      processing. But what exactly?</li>
      <li>And how does it work?</li>
    </ul>
  </slide>

  <slide title="ARM Architecture Procedure Calling Standard">
    <p>The ARM Architecture Procedure Calling Standard governs how procedures
    call each other in high-level languages such as C.</p>
    <p>We&rsquo;re going to call into an ARM assembly routine from C.</p>

    <ul>
      <li>Arguments are passed in R0-R3.</li>
      <li>Subsequent arguments are passed on the stack.</li>
      <li>Arguments are returned in R0-R3.</li>
      <li>Typically only R0 is used.</li>
    </ul>
  </slide>

  <slide title="Answers">
    <p>Answers are <a href="task-one-answers.html">here.</a></p>
  </slide>
  <footer>
  </heading>
</page>

