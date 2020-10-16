// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/mult/Mult.tst

load Sort.hack;

set RAM[14] 2050;
set RAM[15] 20,
set RAM[2050] 10,   
set RAM[2051] 11,   
set RAM[2052] 12,   
set RAM[2053] 13,   
set RAM[2054] 14,   
set RAM[2055] 15,   
set RAM[2056] 16,   
set RAM[2057] 17,   
set RAM[2058] 18,   
set RAM[2059] 19,
set RAM[2060] 20,  
set RAM[2061] 21,   
set RAM[2062] 22,   
set RAM[2063] 23,   
set RAM[2064] 34,   
set RAM[2065] 3335,   
set RAM[2066] 40,   
set RAM[2067] -5555,  
set RAM[2068] 18,   
set RAM[2069] 19
; 
repeat 30000 {
  ticktock;
}

