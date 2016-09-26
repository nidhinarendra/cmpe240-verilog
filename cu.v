module cu(WEA, IncA, IncB, WEB, clk, rst);
    input clk, rst;
    output WEA, IncA, IncB, WEB;
    reg [4:0] count;
    reg reset; //need this to AND with input rst signal and count values
    
    //instantiate up_counter count, rst, clk
    up_counter m1(count, reset, clk);
    //generate WEA

    //generate IncA

    //generate IncB

    //generate WEB

    //generate rst signal
endmodule