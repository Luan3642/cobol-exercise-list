       IDENTIFICATION DIVISION.
       PROGRAM-ID. EX2.


       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-ESCOLHA PIC 9(1) VALUE ZEROS.
       77 WRK-NUM1 PIC 9(04) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(04) VALUE ZEROS.
       77 WRK-RESULT PIC 9(04) VALUE ZEROS.
       77 WRK-RESULT-ED PIC ZZ VALUE ZEROS.


       PROCEDURE DIVISION.
       DISPLAY 'ESCOLHA UMA OPERA��O DO SEU GOSTO'.
       DISPLAY '1- SOMA'.
       DISPLAY '2- SUBTRA��O'.
       DISPLAY '3- DIVIS�O'.
       DISPLAY '4- MULTIPLICA��O'.

       DISPLAY '----------------'.


       ACCEPT WRK-ESCOLHA FROM CONSOLE.

       EVALUATE WRK-ESCOLHA
             WHEN 1

                DISPLAY 'SOMA'
                DISPLAY '--------------------'
                DISPLAY'INFORME O PRIMEIRO VALOR'
                ACCEPT WRK-NUM1 FROM CONSOLE

                DISPLAY'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE

                ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT
                MOVE WRK-RESULT TO WRK-RESULT-ED

                DISPLAY 'A soma �: ' WRK-RESULT-ED

             WHEN 2

                DISPLAY 'SUBTRA��O'
                DISPLAY '-----------------------'
                DISPLAY 'INFORME O PRIMEIRO VALOR'
                ACCEPT WRK-NUM1 FROM CONSOLE

                DISPLAY 'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE


                SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULT

                MOVE WRK-RESULT TO WRK-RESULT-ED
                DISPLAY 'A subtra��o �: ' WRK-RESULT-ED


              WHEN 3

                DISPLAY 'DIVIS�O'
                DISPLAY '-------------------------'
                DISPLAY 'INFORME O PRIMEIRO VALOR '
                ACCEPT WRK-NUM1 FROM CONSOLE

                DISPLAY 'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE

                DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT

                MOVE WRK-RESULT TO WRK-RESULT-ED

                DISPLAY 'A DIVIS�O �' WRK-RESULT-ED

             WHEN 4

                DISPLAY 'MULTIPLICA��O'
                DISPLAY '------------------------'
                DISPLAY 'INFORME O PRIMEIRO VALOR'
                ACCEPT WRK-NUM1 FROM CONSOLE


                DISPLAY 'INFORME O SEGUNDO VALOR'
                ACCEPT WRK-NUM2 FROM CONSOLE


                MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT

                MOVE WRK-RESULT TO WRK-RESULT-ED
                DISPLAY 'A MULPLICA��O �: ' WRK-RESULT-ED


            WHEN OTHER
               DISPLAY 'VALOR DIGITADO INV�LIDO'


           END-EVALUATE.

           STOP RUN.
