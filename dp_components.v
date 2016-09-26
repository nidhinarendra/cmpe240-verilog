module counterA(addr, inc, reset, clk);
    output reg [2:0] addr;
    input inc, reset, clk;
    
    always @(posedge clk) begin
        if(reset) addr = 3'b0;
        else addr = addr + 3'b1;
    end
endmodule

module counterB(addr, inc, reset, clk);
    output reg [1:0] addr;
    input inc, reset, clk;
    
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

module comparator();

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