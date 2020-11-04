// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/mult/Mult.tst

load Divide.asm;

set RAM[13] 16383,
set RAM[14] 128;

repeat 5000 {
  ticktock;
}

