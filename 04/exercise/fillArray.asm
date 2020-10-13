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
 // for (i=0; i<n; i++) {
// arr[i] = -1
// }
// Suppose that arr=100 and n=10
// Let arr = 100
	@100
	D=A
	@arr
	M=D
	// Let n = 10
	@10
	D=A
	@n
	M=D
	// Let i = 0
	@i
	M=0
(lOOP)
	// if (i==n) goto END
	@i
	D=M
	@n
	D=D-M
	@END
	D;JEQ
	// RAM[arr+i] = -1
	@arr
	D=M
	@i
	A=D+M
	M=-1
	// i++
	@i
	M=M+1
	@LOOP
	0;JMP
	(END)
	@END
	0;JMP
