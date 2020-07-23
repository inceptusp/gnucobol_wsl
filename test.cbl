       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CALCULADORA.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 N1 PIC 9(4).
           01 N2 PIC 9(4).
           01 SOMA PIC Z(4).
           01 SUB PIC Z(4).
           01 MULT PIC Z(4).
           01 DIV PIC Z(4).
           01 RESTO PIC Z(4).
           01 OP PIC 9(2) VALUE 0.
           01 INUTIL PIC X(1).
       SCREEN SECTION.
       01 INPUT-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "--------------------------------".
           02 LINE 2 COL 1 VALUE "-             INPUT            -".
           02 LINE 3 COL 1 VALUE "--------------------------------".
           02 LINE 4 COL 1 VALUE "-NUMBER 1:                     -".
           02 LINE 4 COL 18 PIC Z(4) TO N1.
           02 LINE 5 COL 1 VALUE "-NUMBER 2:                     -".
           02 LINE 5 COL 18 PIC Z(4) TO N2.
           02 LINE 6 COL 1 VALUE "--------------------------------".
           02 LINE 7 COL 1 VALUE "-   1.SUM/2.SUB/3.MULT/4.DIV   -".
           02 LINE 8 COL 1 VALUE "-OPERATION:                    -".
           02 LINE 8 COL 18 PIC 9(1) TO OP.
           02 LINE 9 COL 1 VALUE "--------------------------------".
       01 SOMA-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "--------------------------------".
           02 LINE 2 COL 1 VALUE "-             SUM              -".
           02 LINE 3 COL 1 VALUE "--------------------------------".
           02 LINE 4 COL 1 VALUE "-ANSWER:                       -".
           02 LINE 4 COL 18 PIC Z(4) FROM SOMA.
           02 LINE 5 COL 1 VALUE "--------------------------------".
           02 LINE 6 COL 1 VALUE "EXIT ->".
       01 SUB-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "--------------------------------".
           02 LINE 2 COL 1 VALUE "-          SUBTRACTION         -".
           02 LINE 3 COL 1 VALUE "--------------------------------".
           02 LINE 4 COL 1 VALUE "ANSWER:                        -".
           02 LINE 4 COL 18 PIC Z(4) FROM SUB.
           02 LINE 5 COL 1 VALUE "--------------------------------".
           02 LINE 6 COL 1 VALUE "EXIT ->".
       01 MULT-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "--------------------------------".
           02 LINE 2 COL 1 VALUE "-        MULTIPLICATION        -".
           02 LINE 3 COL 1 VALUE "--------------------------------".
           02 LINE 4 COL 1 VALUE "-ANSWER:                       -".
           02 LINE 4 COL 18 PIC Z(4) FROM MULT.
           02 LINE 5 COL 1 VALUE "--------------------------------".
           02 LINE 6 COL 1 VALUE "EXIT ->".
       01 DIV-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "--------------------------------".
           02 LINE 2 COL 1 VALUE "-           DIVISION           -".
           02 LINE 3 COL 1 VALUE "--------------------------------".
           02 LINE 4 COL 1 VALUE "-ANSWER:                       -".
           02 LINE 4 COL 18 PIC Z(4) FROM DIV.
           02 LINE 5 COL 1 VALUE "-REMAINDER:                    -".
           02 LINE 5 COL 18 PIC Z(4) FROM RESTO.
           02 LINE 6 COL 1 VALUE "--------------------------------".
           02 LINE 7 COL 1 VALUE "EXIT ->".
       01 ERRO-SCREEN.
           02 BLANK SCREEN.
           02 LINE 1 COL 1 VALUE "--------------------------------".
           02 LINE 2 COL 1 VALUE "-      INCORRECT OPERATION     -".
           02 LINE 3 COL 1 VALUE "--------------------------------".
       PROCEDURE DIVISION.
       INPUT-PROCEDURE.
           DISPLAY INPUT-SCREEN.
           ACCEPT INPUT-SCREEN.
           EVALUATE OP
               WHEN 1
                   GO TO SOMA-PROCEDURE
               WHEN 2
                   GO TO SUB-PROCEDURE
               WHEN 3
                   GO TO MULT-PROCEDURE
               WHEN 4
                   GO TO DIV-PROCEDURE
               WHEN OTHER
                   DISPLAY ERRO-SCREEN
                   ACCEPT INUTIL AT LINE 4 COL 1
                   GO TO INPUT-PROCEDURE
           END-EVALUATE.
       SOMA-PROCEDURE.
           ADD N1 TO N2 GIVING SOMA.
           DISPLAY SOMA-SCREEN.
           ACCEPT INUTIL AT LINE 7 COL 8.
           STOP RUN.
       SUB-PROCEDURE.
           SUBTRACT N1 FROM N2 GIVING SUB.
           DISPLAY SUB-SCREEN.
           ACCEPT INUTIL AT LINE 7 COL 8.
           STOP RUN.
       MULT-PROCEDURE.
           MULTIPLY N1 BY N2 GIVING MULT.
           DISPLAY MULT-SCREEN.
           ACCEPT INUTIL AT LINE 7 COL 8.
           STOP RUN.
       DIV-PROCEDURE.
           DIVIDE N1 BY N2 GIVING DIV REMAINDER RESTO.
           DISPLAY DIV-SCREEN.
           ACCEPT INUTIL AT LINE 7 COL 8.
           STOP RUN.
       END PROGRAM CALCULADORA.
