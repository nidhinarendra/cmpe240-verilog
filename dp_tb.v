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
                0: begin rst = 1; end
                1: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                2: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                3: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                4: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                5: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                6: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                7: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end
                8: begin rst = 0; WEA = 1; incA = 1; WEB = 0; incB = 0;end 
                9: begin rst = 0;WEA = 0; incA = 1; WEB = 0; incB = 0; end
                10:begin rst = 0;WEA = 0; incA = 1; WEB = 0; incB = 0; end
                11:begin rst = 0;WEA = 0; incA = 1; WEB = 1; incB = 0; end
                12:begin rst = 0;WEA = 0; incA = 1; WEB = 0; incB = 1; end
                13:begin rst = 0;WEA = 0; incA = 1; WEB = 1; incB = 0; end
                14:begin rst = 0;WEA = 0; incA = 1; WEB = 0; incB = 1; end
                15:begin rst = 0;WEA = 0; incA = 1; WEB = 1; incB = 0; end
                16:begin rst = 0;WEA = 0; incA = 1; WEB = 0; incB = 1; end
                17:begin rst = 0;WEA = 0; incA = 0; WEB = 1; incB = 0; end
                18:begin rst = 0; WEA = 0; incA = 0; WEB = 0; incB = 1; end
            endcase
            #4;
        end
    end

endmodule