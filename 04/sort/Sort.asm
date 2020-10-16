// The program should sort the array starting at the address in 14.
//with length as specified in R15. Don't change these registers.
//The sort is in descending order - the largest number at the head of the array.
//You can assume that each array value x is between -16384 < x < 16384.
//You can assume that the address in R14 is >= 2048, and that R14 + R15 <= 16383. 
//You can implement any sorting algorithm as long as its runtime complexity is at most C*O(N^2).
// The algorithm used is bubble-sort.

@i
M=0 // i = 0 

@R15
D=M
@lastIdxArr 
M=D-1 // lastIdxArr = length array - 1

(LOOP1)
	@i
	D=M
	@lastIdxArr
	D=D-M
	@STOPLOOP1 
	D;JEQ // stops when i == lastIdxArr 

	@lastIdxArr
	D=M
	@j
	M=D // j = lastIdxArr 

	(LOOP2)
		@i
		D=M
		@j
		D=D-M
		@STOPLOOP2 // stops when i == j
		D;JEQ

		@j
		D=M-1
		@R14
		A=M
		D=D+A // RAM[14]+j-1

		@addr1
		M=D // address Arr[j-1] 
		D=M+1 

		@addr2
		M=D // address Arr[j]
		
		@addr1
		A=M
		D=M
		@temp1
		M=D // temp1 = val(Arr[j-1])

		@addr2
		A=M
		D=M
		@temp2
		M=D // temp2 = val(Arr[j])
		D=M

		@temp1
		D=D-M
		@NEXT //goes to the next loop if val(Arr[j-1]) >= val(Arr[j]) 
		D;JLE

		@temp2 //else exchanges val(Arr[j-1]) <--> Val(Arr[j])
		D=M
		@addr1
		A=M
		M=D

		@temp1
		D=M
		@addr2
		A=M
		M=D
		
		(NEXT)
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
