// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

// check if key is pressed => if KBD =!0 then key is pressed, otherwised not pressed 
// Starting at base address SCREEN, set 8192 word to -1 if a key is pressed, otherwise 0

// R0 = 8192
@8192
D = A
@R0
M = D

(CLEAR)
    // i = 0
    @i
    M = 0
    (CLEAR_LOOP)
        // if (KBD != 0) goto FILL
        @KBD
        D=M
        @FILL
        D;JNE

        // if (i>R0) goto CLEAR_LOOP
        @i
        D = M
        @R0
        D = M - D       
        @CLEAR_LOOP
        D;JEQ
        // addr = SCREEN + i
        @i
        D = M
        @SCREEN
        A = D + A

        // RAM[addr] = -1
        M = 0

        // i = i + 1
        @i
        M = M + 1
        // goto CLEAR_LOOP
        @CLEAR_LOOP
        0;JMP

(FILL)
    // i = 0
    @i
    M = 0
    (FILL_LOOP)
        // if (KBD == 0) goto CLEAR
        @KBD
        D = M
        @CLEAR
        D;JEQ

        // if (i>R0) goto FILL_LOOP
        @i
        D = M
        @R0
        D = M-D
        @FILL_LOOP
        D;JEQ
        
        // addr = SCREEN + i
        @i
        D = M
        @SCREEN
        A = D + A
        
        // RAM[addr] = 0
        M = -1

        // i = i + 1
        @i
        M = M + 1
        
        // goto FILL_LOOP
        @FILL_LOOP
        0;JMP

        
