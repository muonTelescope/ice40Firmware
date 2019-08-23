// Detect coincidence between channels
/* module */
module top (CH0, 
            CH1, 
            CH2, 
            CH3, 
            CH4, 
            CH5, 
            CH6, 
            CH7, 
            // gpioSDO, 
            // gpioSDI, 
            // gpioSCK, 
            gpioSS, 
            gpio27,
            gpio23,
            gpio18,
            gpio17,
            CLK
        );
    
    input CH0;
    input CH1;
    input CH2;
    input CH3;
    input CH4;
    input CH5;
    input CH6;
    input CH7;
    input CLK;  

    // output gpioSDO;
    // output gpioSDI;
    // output gpioSCK;
    output gpioSS;
    output gpio27;  
    output gpio23;  
    output gpio18;  
    output gpio17;  

    reg [15:0] counterCh0;

    always @(posedge CLK)
        counterCh0 <= counterCh0 + 1;

    assign gpioSS   = CH0 & CH1;
    // assign gpioSDI  = CH0 && CH2;
    // assign gpioSCK  = CH0 && CH1 && CH2;
    // assign gpioSS   = CH3 && CH4;
    // assign gpio01   = CH0 && CH1 && CH2 && CH3 && CH4;

endmodule