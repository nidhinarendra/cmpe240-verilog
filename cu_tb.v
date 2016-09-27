`timescale 1ns/1ps

module cu_tb;
//WEA, IncA, IncB, WEB, clk, rst
    reg clk, rst;
    wire WEA, IncA, IncB, WEB;
    
    integer i;
    
    cu DUT(WEA, IncA, IncB, WEB, clk, rst);

    initial begin
       rst = 1;
       clk = 0; #5;
       clk = 1; #5;
       rst = 0;
       for(i = 0; i < 100; i = i + 1) begin
            clk = 0; #5;
            clk = 1; #5;
       end 
    
    end

endmodule