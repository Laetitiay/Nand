// File name: Divide.asm
// The program's inputs will be at R13,R14.
// The result R13/R14 should be stored at R15.
// The remainder should be discarded: 3 divided by 2 is 1 (not 1.5).
// You may assume both numbers are positive and larger than 0.
// Algorithm chosen: long division.
// If a natural number n is in R13 and a natural number m is in R14, then the complexityshould be at most O(log(max(n, m))^2).

	@R15
	M=0 // Initialization: result = 0

	@R13
	D=M
	@num1 // num1 = RAM[13]
	M=D

	@R14
	D=M
	@num2 // num2 = RAM[14]
	M=D
	D=M

	@num1
	D=D-M

	@END // If num2 > num1 - go to END
	D;JGT

	@digNum1 // digNum1 = num1 digits numbers
	M=0 // m = 0

(COUNTDIGNUM1) // Updates digNum1
	@num1
	M=M>>
	D=M
	@digNum1
	M=M+1
	@COUNTDIGNUM1
	D;JGT
	
	@R13
	D=M
	@num1 // num1 = RAM[13]
	M=D

	@digNum2 // digNum2= num2 digits number 
	M=0 // m = 0

(COUNTDIGNUM2) // Updates digNum2
	@num2
	M=M>>
	D=M
	@digNum2
	M=M+1
	@COUNTDIGNUM2
	D;JGT
	
	@R14
	D=M
	@num2 // num2 = RAM[14]
	M=D

	@digNum1
	D=M
	@digNum2
	D=D-M
	@numShifts// numShifts = digNum1 - digNum2
	M=D
	D=M

(ALIGNNUM2) // Align Num2 and Num1 MSB
	@DIVIDE //If D=0, num2 is aligned to num1 MSB.
	D;JEQ
	@num2
	M=M<<
	D=D-1
	@ALIGNNUM2
	0;JMP

(DIVIDE)
	@num1
	D=M
	@num2
	D=D-M
	@SHIFT
	D;JLT // If num1 < num2 go to SHIFT.
 	@num1
	M=D // else num1 = num1 - num2
	@R15
	M=M+1

(SHIFT)
	@numShifts
	D=M
	@END
	D;JEQ // If numShifts=0 go to END
	@num2
	M=M>>
	@R15
	M=M<<
	@numShifts
	M=M-1
	@DIVIDE
	0;JMP

(END)


