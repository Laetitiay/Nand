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
	
	@R0
	D=M
	@toMult
	M=D // toMult = R0 
	
	@R1
	D=M
	@n
	M=D // n = R1

	@i
	M=0 // i = 0

	@mult // mult = 0
	M=0

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D;JEQ // if i == n go to STOP

	@toMult
	D=M
	@mult
	M=D+M //mult = mult + R0
	@i
	M=M+1 // i = i + 1
	@LOOP
	0;JMP

(STOP)
	@mult
	D=M
	@R2
	M=D // Ram[2] = mult 






