module cu(WEA, IncA, IncB, WEB, clk, rst);
    input clk, rst;
    output WEA, IncA, IncB, WEB;
    
    wire [4:0] count;
    wire reset_out;
    //wire reset; //need this to AND with input rst signal and count values
    
    //instantiate up_counter count, rst, clk
    up_counter m1(count, reset_out, clk);
    //generate WEA
    gen_WEA m2(WEA, count);
    //generate IncA
    gen_IncA m3(IncA, count);
    //generate IncB
    gen_IncB m4(IncB, count);
    //generate WEB
    gen_WEB m5(WEB, count);
    //generate rst signal rst, reset_in, count
    gen_rst m6(reset_out, rst, count);
endmodule