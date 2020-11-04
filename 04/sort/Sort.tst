// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/mult/Mult.tst

load Sort.asm,
output-file Sort.out,
compare-to Sort.cmp,

output-list RAM[14]%D2.7.2 RAM[15]%D2.7.2 RAM[2048]%D2.7.2 ;

set PC 0, set RAM[14] 2048, set RAM[15] 1, set RAM[2048] 15;
repeat 30000 {ticktock;} output;
output-list RAM[14]%D2.7.2 RAM[15]%D2.7.2 RAM[3500]%D2.7.2 RAM[3501]%D2.7.2 ;

set PC 0, set RAM[14] 3500, set RAM[15] 2, set RAM[3500] 15, set RAM[3501] 3;
repeat 30000 {ticktock;} output;
output-list RAM[14]%D2.7.2 RAM[15]%D2.7.2 RAM[3600]%D2.7.2 RAM[3601]%D2.7.2 RAM[3602]%D2.7.2 RAM[3603]%D2.7.2 RAM[3604]%D2.7.2 ;

set PC 0, set RAM[14] 3600, set RAM[15] 5, set RAM[3600] -6252, set RAM[3601] 10156, set RAM[3602] 3966, set RAM[3603] -12297, set RAM[3604] 1745;
repeat 30000 {ticktock;} output;
output-list RAM[14]%D2.7.2 RAM[15]%D2.7.2 RAM[6000]%D2.7.2 RAM[6001]%D2.7.2 RAM[6002]%D2.7.2 RAM[6003]%D2.7.2 RAM[6004]%D2.7.2 RAM[6005]%D2.7.2 RAM[6006]%D2.7.2 RAM[6007]%D2.7.2 RAM[6008]%D2.7.2 RAM[6009]%D2.7.2 ;

set PC 0, set RAM[14] 6000, set RAM[15] 10, set RAM[6000] -3550, set RAM[6001] -9409, set RAM[6002] 12359, set RAM[6003] 2771, set RAM[6004] -1225, set RAM[6005] -14096, set RAM[6006] 12665, set RAM[6007] -3794, set RAM[6008] -243, set RAM[6009] -6271;
repeat 30000 {ticktock;} output;
output-list RAM[14]%D2.7.2 RAM[15]%D2.7.2 RAM[6001]%D2.7.2 RAM[6002]%D2.7.2 RAM[6003]%D2.7.2 RAM[6004]%D2.7.2 RAM[6005]%D2.7.2 RAM[6006]%D2.7.2 RAM[6007]%D2.7.2 RAM[6008]%D2.7.2 RAM[6009]%D2.7.2 RAM[6010]%D2.7.2 ;

set PC 0, set RAM[14] 6001, set RAM[15] 10, set RAM[6001] -16202, set RAM[6002] -5235, set RAM[6003] -13563, set RAM[6004] -9831, set RAM[6005] 8107, set RAM[6006] -7007, set RAM[6007] -9231, set RAM[6008] -11561, set RAM[6009] 9766, set RAM[6010] 8375;
repeat 30000 {ticktock;} output;
output-list RAM[14]%D2.7.2 RAM[15]%D2.7.2 RAM[16363]%D2.7.2 RAM[16364]%D2.7.2 RAM[16365]%D2.7.2 RAM[16366]%D2.7.2 RAM[16367]%D2.7.2 RAM[16368]%D2.7.2 RAM[16369]%D2.7.2 RAM[16370]%D2.7.2 RAM[16371]%D2.7.2 RAM[16372]%D2.7.2 ;

set PC 0, set RAM[14] 16363, set RAM[15] 10, set RAM[16363] -3769, set RAM[16364] -10618, set RAM[16365] -6579, set RAM[16366] 9734, set RAM[16367] -185, set RAM[16368] -2715, set RAM[16369] -16004, set RAM[16370] 13078, set RAM[16371] 4943, set RAM[16372] -113;
repeat 30000 {ticktock;} output;
