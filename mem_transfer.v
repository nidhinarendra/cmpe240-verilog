module mem_transfer(clk, rst, dataInA);
     wire WEA, IncA, IncB;
     input wire [7:0] dataInA;
     input wire clk, rst;
     
     wire reset_out;
//WEA, IncA, IncB, WEB, clk, rst
//dp(WEA, dataInA, WEB, clk, rst, incA, incB);
    cu m1(reset_out, WEA, IncA, IncB, WEB, clk, rst);
    dp m2(WEA, dataInA, WEB, clk, reset_out, IncA, IncB);
endmodule