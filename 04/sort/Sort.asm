// File name: projects/04/Sort.asm
// The program should sort the array starting at the address in 14.
// with length as specified in R15. Don't change these registers.
// The sort is in descending order - the largest number at the head of the array.
// You can assume that each array value x is between -16384 < x < 16384.
// You can assume that the address in R14 is >= 2048, and that R14 + R15 <= 16383. 
// You can implement any sorting algorithm as long as its runtime complexity is at most C*O(N^2).
// The algorithm used is bubble-sort.

	@i
	M=0 // i = 0 

(LOOP1)
	@i
	D=M+1
	@R15
	D=D-M
	@STOPLOOP1 
	D;JEQ // stops when i == R15 - 1 

	@R15
	D=M
	@j
	M=D-1 // j = R15 - 1

(LOOP2)
	@i
	D=M
	@j
	D=D-M
	@STOPLOOP2 // stops when i == j
	D;JEQ

	@j
	D=M
	@R14
	A=M
	D=D+A // RAM[14]+j

	@addrj
	M=D // address Arr[j] 
    A=M
	D=M
	@temp
	M=D // temp = val(Arr[j])

	@addrj
	A=M
	A=A-1
	D=M // D = val(Arr[j-1])

	@temp
	D=D-M
	@NEXTLOOP2 //goes to the next loop if val(Arr[j-1]) >= val(Arr[j]) 
	D;JGE

	@addrj // else swifts the values
	A=M
	A=A-1
	D=M
	@addrj
	A=M
	M=D
	
	@temp
	D=M
	@addrj
	A=M
	A=A-1
	M=D

(NEXTLOOP2)
	@j
	M=M-1 // j = j - 1
	@LOOP2
	0;JMP

(STOPLOOP2)
	@i
	M=M+1
	@LOOP1 // i = i + 1
	0;JMP


(STOPLOOP1)
