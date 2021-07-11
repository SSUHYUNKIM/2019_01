(START)

   @SCREEN
   D=A
   @i
   M=D
   @j
   M=0

(HORIZON_1)

   @i
   AD=M
   @24576
   D=D-A
   @HORIZON_2
   D;JLT
   @END
   0;JMP

(HORIZON_2)

   @i
   AD=M
   M= -1
   @i
   M=M+1
   @j
   M=M+1
   @j
   D=M
   @32
   D=D-A
   @VERTICAL
   D;JEQ
   @HORIZON_1
   0;JMP


(VERTICAL)
   
   @j
   M=0

(VERTICAL_1)
   
   @i
   AD=M
   @24576
   D=D-A
   @END
   D;JGT


(VERTICAL_2)
   @i
   AD=M
   M= 1
   @i
   M=M+1
   @j
   M=M+1
   @j
   D=M
   @479
   D=D-A
   @VERTICAL_1
   D;JLT
   @i
   M=M+1
   @j
   M=0
   @HORIZON_1
   0;JMP

(END)
   @END
   0;JMP