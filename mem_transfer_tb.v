module mem_transfer_tb;
    reg [7:0] dataInA;
    reg clk, rst;
    
    integer i = 0;
    
    mem_transfer DUT(clk, rst, dataInA);
   

    initial begin
    dataInA = 0;
        rst = 1;
        clk = 0; #5;
        rst = 0;
        clk = 1; #5;
        for(i = 0; i < 60; i = i + 1)begin
           dataInA = i;
            clk = 0; #5;
            clk = 1; #5;
        end
    end
endmodule