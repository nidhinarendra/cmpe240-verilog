module mem_transfer(clk, rst, dataInA);
     wire WEA, IncA, IncB;
     input wire [7:0] dataInA;
     input wire clk, rst;
//WEA, IncA, IncB, WEB, clk, rst
//dp(WEA, dataInA, WEB, clk, rst, incA, incB);
    cu m1(WEA, IncA, IncB, WEB, clk, rst);
    dp m2(WEA, dataInA, WEB, clk, rst, IncA, IncB);
endmodule