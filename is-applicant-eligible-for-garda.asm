///
/// The age range for applying for the Garda is between 18 and 35. Write a program in assembly language to do the following:
///
lbInput             INP             //Take user input
                    BRZ lbExit      // exit if 0
                    BRP lbTest      //branch to test if input >0
                    BRA lbInput     //branch to input if input <0

lbTest              STA varAge
                    SUB valLower
                    BRP lbIncrement
                    BRA lbInput

lbIncrement         LDA varAccepted
                    ADD valOne
                    STA varAccepted
                    BRA lbInput
lbExit              LDA varAccepted //
                    OUT
                    HLT

valLower            DAT 18
valOne              DAT 1
valUpper            DAT 35

varAccepted         DAT 0           // Number of accepted garda
varAge              DAT 0