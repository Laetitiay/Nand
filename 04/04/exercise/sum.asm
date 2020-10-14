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

// Computes RAM[1] = 1+2+ ... +n
// Usage: put a number (n) in RAM[0]
        @R0
	D=M
	@n
	M=D // n = R0
	@i
	M=1 // i = 1
	@sum
	M=0 // sum = 0
(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D;JGT // if i > n goto STOP
	@sum
	D=M
	@i
	D=D+M
	@sum
	M=D // sum = sum + i
	@i
	M=M+1 // i = i + 1
	@LOOP
	0;JMP
(STOP)
	@sum
	D=M
	@R1
	M=D // RAM[1] = sum
(END)
	@END
	0;JMP
