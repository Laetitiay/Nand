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

// flips the values of
// RAM[0] and RAM[1]
    @R1 
    D=M
    @temp
    M=D // temp = R1

    @R0
    D=M
    @R1
    M=D // R1 = R0

    @temp
    D=M
    @R0
    M=D // R0 = temp

  (END)
    @END
    0;JMP