// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

@255
D = A
@n
M = D			// n = RAM[0]

(CHECK_KEY_PRESSED)
//Reset
@i
M=1         // Set i = 0
@SCREEN
D = A
@address
M = D			// address = 16384 (base address of the Hack screen)

//Check the key 
@KBD 
D=M 
@BLACKEN 
D; JGT 
@WHITEN
0; JMP 

(BLACKEN)
//jump back to checking when finish blacken
@i 
D=M
@n 
D=D-M
@CHECK_KEY_PRESSED
D;JGT 

// Blacken 
@i 
M=M+1

@BLACKEN_ROW
0;JMP 


(WHITEN)
//whiten the screen
@i 
D=M 
@n 
D=D-M

@CHECK_KEY_PRESSED
D;JGT 

// whiten 
@i 
M=M+1  

@WHITEN_ROW
0;JMP 



(BLACKEN_ROW)
@R1
D=A
@ibr //internal blacken row
M=D 

(BR_LOOP)
@ibr
D=M
@32
D=D-A
@BLACKEN
D;JGT 

@address 
A=M 
M=-1  // Set the value at address[M] to -1 (16 bit 1)

@address 
M=M+1 

@ibr 
M=M+1

@BR_LOOP
0;JMP


(WHITEN_ROW)
@R1
D=A
@iwr //internal blacken row
M=D 

(WR_LOOP)
@iwr
D=M
@32
D=D-A
@WHITEN
D;JGT 

@address 
A=M 
M=0  // Set the value at address[M] to -1 (16 bit 1)

@address 
M=M+1 

@iwr 
M=M+1

@WR_LOOP
0;JMP