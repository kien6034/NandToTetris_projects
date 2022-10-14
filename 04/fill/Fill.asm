// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.


(CHECK_KEY_PRESSED)
@KBD 
D=M 
@BLACKEN 
D; JGT 
@WHITEN
0; JMP 

(BLACKEN)
//blackend the screen 
@R1
D=A 
@R0
M=D 

//go back to the loop 
@CHECK_KEY_PRESSED
0;JMP



(WHITEN)
//whiten the screen
@R0 
D=A
@R0 
M=D

// go back to the loop
@CHECK_KEY_PRESSED
0;JMP