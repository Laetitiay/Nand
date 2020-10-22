// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// Assumption: R0>=0, R1>=0, R0*R1<32768=2^15
// R2 is initialized to 0.

	@R2
	M=0 // Initialization of R2 to 0
	
	@i
	M=0 // i = 0

(LOOP)
	@i
	D=M
	@R1
	D=D-M
	@STOP
	D;JEQ // if i == R1 go to STOP

	@R0
	D=M
	@R2
	M=D+M //R2 = R2 + R0
	@i
	M=M+1 // i = i + 1
	@LOOP
	0;JMP

(STOP)




