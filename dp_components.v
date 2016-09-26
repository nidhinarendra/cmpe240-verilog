module memoryA(DOut1, AddrA, WEA, DataInA);
    output reg [7:0] DOut1;
    input [2:0] AddrA;
    input WEA;
    input [7:0] DataInA;

    reg [7:0] memA [7:0];
    
    always @(AddrA, DataInA, WEA)begin
        if(WEA) memA[AddrA] = DataInA;
        else begin
            memA[AddrA] = memA[AddrA];
            DOut1 = memA[AddrA];
        end
    end
endmodule

module memoryB(AddrB, WEB, DataInB);
    input [2:0] AddrB;
    input WEB;
    input [7:0] DataInB;

    reg [7:0] memB [3:0];
    
    always @(AddrB, DataInB, WEB)begin
        if(WEB) memB[AddrB] = DataInB;
        else begin 
            memB[AddrB] = memB[AddrB];
        end
    end
endmodule

module counterA(addr, inc, reset, clk);
    output reg [2:0] addr;
    input inc, reset, clk;
    
    initial begin
        addr = 0;
    end
    
    always @(posedge clk) begin
        if(reset) addr = 3'b0;
        else addr = addr + 3'b1;
    end
endmodule

module counterB(addr, inc, reset, clk);
    output reg [1:0] addr;
    input inc, reset, clk;
    
    initial begin
        addr = 0;
    end
    
    always @(posedge clk) begin
        if(reset) addr = 2'b0;
        else addr = addr + 2'b1;
    end
endmodule

module dreg(q, d, clk);
    output reg [7:0] q;
    input [7:0] d;
    input clk;
    
    always @(posedge clk) begin
        q = d;
    end
endmodule

module comparator(sign, in1, in2);
    output reg sign;
    input [7:0] in1;
    input [7:0] in2;
    
    always @(in1, in2) begin
        if(in1 >= in2) sign = 0;
        else sign = 1;
    end
    
endmodule

module adder(addOut, in1, in2);
    output [7:0] addOut;
    input [7:0] in1;
    input [7:0] in2;
    
    assign addOut = in1 + in2;
endmodule

module sub(subOut, in1, in2);
    output [7:0] subOut;
     input [7:0] in1;
     input [7:0] in2;
     
     assign subOut = in1 - in2;
endmodule

module mux2to1(dataOut, addIn, subIn, sel);
    output reg [7:0] dataOut;
    input [7:0] addIn;
    input [7:0] subIn;
    input sel;
    
    always @(addIn, subIn, sel) begin
        if(sel) dataOut = subIn;
        else dataOut = addIn;
    end
endmodule