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

@8192
D=A
@n
M=D  // Size of the screen memory map (32*256)

@SCREEN
D=A
@addr
M=D // addr = 16384 (screen's base address)
@lastKBDsign // Keyboard signal = 1 iff a key is pressed. Initiates last Keyboard signal.
M=0
@i
M=0 //i = 0
(LOOP)
	@KBD
	D=M
	@KEYPRESSED
	D;JGT
	@NOKEYPRESSED
	D;JEQ
	(KEYPRESSED)
		@currKBDsign
		M=1
	(NOKEYPRESSED)
		@currKBDsign
		M=0

	@currKBDsign
	D=M
	@diffTemp
	M=D
	@lastKBDsign
	D=M
	@diffTemp
	M=D-M

	@diffTemp
	D=M
	@FLIPCOLOR
	D;JNE
	@SAMECOLOR
	D;JEQ
	(FLIPCOLOR)
		@i
		M=0
		@SCREEN
		D=A
		@addr
		M=D // addr = 16384 (screen's base address)
		@currKBDsign
		D=M
		@addr
		M=-D
	(SAMECOLOR)
		@i
		D=M
		@n
		D=D-M
		@COLOR
		D;JLT
		(COLOR)
			@addr
			M=M+1
			@currKBDsign
			D=M
			@addr
			M=-D
	@currKBDsign
	D=M
	@lastKBDsign
	M=D
	@i
	M=M+1
	(LOOP)
	0;JMP




