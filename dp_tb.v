`timescale 1ns/1ps

module dp_tb;
    
    reg [7:0] dataInA;
    reg WEA, WEB, clk, rst, incA, incB;
//    outB, WEA, dataInA, WEB, clk, rst, incA, incB
    dp DUT(WEA, dataInA, WEB, clk, rst, incA, incB);
    
    integer i = 0;
    
    initial begin
        clk = 0;
        rst = 0;
        WEA = 0; incA = 0; WEB = 0; incB = 0;
    end
    
    always begin
        #5 clk = ~clk;
    end
    
    initial begin
        for(i = 0; i < 19; i = i + 1)begin
            dataInA = i; #5;
            case(i)
                0: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                1: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                2: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                3: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                4: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                5: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                6: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                7: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end
                8: begin WEA = 1; incA = 1; WEB = 0; incB = 0; end 
                9: begin WEA = 0; incA = 1; WEB = 0; incB = 0; end
                10:begin WEA = 0; incA = 1; WEB = 0; incB = 0; end
                11:begin WEA = 0; incA = 1; WEB = 1; incB = 0; end
                12:begin WEA = 0; incA = 1; WEB = 0; incB = 1; end
                13:begin WEA = 0; incA = 1; WEB = 1; incB = 0; end
                14:begin WEA = 0; incA = 1; WEB = 0; incB = 1; end
                15:begin WEA = 0; incA = 1; WEB = 1; incB = 0; end
                16:begin WEA = 0; incA = 1; WEB = 0; incB = 1; end
                17:begin WEA = 0; incA = 0; WEB = 1; incB = 0; end
                18:begin WEA = 0; incA = 0; WEB = 0; incB = 1; end
            endcase
        end
    end
    
/*    always begin
        #5 clk = ~clk;
    end*/

endmodule