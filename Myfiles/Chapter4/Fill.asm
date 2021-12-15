// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
 @8192   // (512 * 256) / 16 (EACH WORD IS 16 BIT AND NO. OF PIXELS=512*256)
        D=A
        @count
        M=D     // count = number of words
(OUTER LOOP)
        @index
        M=0     // index = 0
(INNER LOOP)
        @KBD
        D=M
        @WHITE
        D;JEQ   // goto WHITE if KBD value is 0
(BLACK)
        @index
        D=M
        @SCREEN
        A=A+D   //TO Calculate byte address
        M=-1    // black
        @END
        0;JMP   // goto END
(WHITE)
        @index
        D=M
        @SCREEN
        A=A+D   // TO Calculate byte address
        M=0     //  white
(END)   
        @index
        MD=M+1  //INDEX=INDEX+1
        @count
        D=D-M
        @OUTER LOOP
        D;JEQ   // goto OUTER LOOP if count - index == 0
        @INNER LOOP
        0;JMP   // goto INNER LOOP