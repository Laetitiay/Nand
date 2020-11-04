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

	@8192 // size of screen memory map (32*256) 
	D=A
	@n
	M=D

	@i
	M=0 // i=0

	@SCREEN
	D=A
	@addr
	M=D // addr = 16384 (screen's base address)

(LOOP)
	@KBD // checks if the keyboard was pressed
	D=M
	@KEYPRESSED
	D;JGT
	@KEYNOTPRESSED
	D;JEQ

(KEYPRESSED)
	@i
	D=M
	@n
	D=D-M
	@BLACKEN16BITS // If i < n blackens 16 pixels
	D;JLT
	@LOOP // else returns to loop
	0;JMP

(BLACKEN16BITS)
	@addr
	A=M	
	M=-1
	@addr
	M=M+1
	@i
	M=M+1
	@LOOP
	0;JMP

(KEYNOTPRESSED)
	@i
	D=M
	@WHITEN16BITS // If i > 0 whitens 16 pixels
	D;JGT
	@LOOP // else returns to loop
	0;JMP

(WHITEN16BITS)
	@addr
	M=M-1
	@i
	M=M-1
	@addr
	A=M
	M=0
	@LOOP
	0;JMP

	

