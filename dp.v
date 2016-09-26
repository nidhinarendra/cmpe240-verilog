module dp(WEA, dataInA, WEB, clk, rst, incA, incB);
    input WEA, WEB, clk, rst, incA, incB;
    input [7:0] dataInA;
    
    wire [2:0] addrA;
    wire [1:0] addrB;
    wire [7:0] DOut, DOut2, addOut, subOut, DataInB;
    wire sign;
    
    counterA m1(addrA, incA, rst, clk);
    memoryA m2(DOut, addrA, WEA, dataInA);
    dreg m3(DOut2, DOut, clk);
    comparator m4(sign, DOut2, DOut);
    adder m5(addOut, DOut2, DOut);
    sub m6(subOut, DOut2, DOut);
    mux2to1 m7(DataInB, addOut, subOut, sign);
    counterB m8(addrB, incB, rst, clk);
    memoryB m9(addrB, WEB, DataInB);

endmodule