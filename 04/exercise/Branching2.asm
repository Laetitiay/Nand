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

// Program: Signum.asm
// Computes: if R0>0
// R1=1
// else
// R1=0
// Usage: put a value in RAM[0],
// run and inspect RAM[1].
    @R0
    D=M // D = RAM[0]
    @POSITIVE
    D;JGT // If R0>0 goto 8

    @R1
    M=0 // RAM[1]=0
    @10
    0;JMP // goto end

 (POSITIVE)
    @R1
    M=1 // R1=1
 (END)
    @END
    0;JMP