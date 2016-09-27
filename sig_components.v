module gen_WEA(WEA, count);
    output WEA;
    input [4:0] count;
    
    assign WEA = ~count[4] & ~count[3] & ~count[2] & ~count[1] & count[0] |
                ~count[4] & ~count[3] & ~count[2] & count[1] & ~count[0] |
                ~count[4] & ~count[3] & ~count[2] & count[1] & count[0] |
                ~count[4] & ~count[3] & count[2] & ~count[1] & ~count[0] |
                ~count[4] & ~count[3] & count[2] & ~count[1] & count[0] |
                ~count[4] & ~count[3] & count[2] & count[1] & ~count[0] |
                ~count[4] & ~count[3] & count[2] & count[1] & count[0] |
                ~count[4] & count[3] & ~count[2] & ~count[1] & ~count[0];
endmodule

module gen_IncA(IncA, count);
    output IncA;
    input [4:0] count;
    
    assign IncA = ~((count[4] & ~count[3] & ~count[2] & ~count[1] & count[0]) |
                        (count[4] & ~count[3] & ~count[2] & count[1] & ~count[0]) |
                        (count[4] & ~count[3] & ~count[2] & count[1] & count[0]));
   
    /*assign IncA = ~(~(count[4] & ~count[3] & ~count[2] & ~count[1] & count[0]) |
                    ~(count[4] & ~count[3] & ~count[2] & count[1] & ~count[0]) |
                    ~(count[4] & ~count[3] & ~count[2] & count[1] & count[0]));*/
endmodule

module gen_IncB(IncB, count);
    output IncB;
    input [4:0] count;
    
    assign IncB = (~count[4] & count[3] & count[2] & ~count[1] & ~count[0]) |
                (~count[4] & count[3] & count[2] & count[1] & ~count[0]) |
                (count[4] & ~count[3] & ~count[2] & ~count[1] & ~count[0]) |
                (count[4] & ~count[3] & ~count[2] & count[1] & ~count[0]);
endmodule

module gen_WEB(WEB, count);
    output WEB;
    input [4:0] count;
    
    assign WEB = (~count[4] & count[3] & ~count[2] & count[1] & count[0]) |
                (~count[4] & count[3] & count[2] & ~count[1] & count[0]) |
                (~count[4] & count[3] & count[2] & count[1] & count[0]) |
                (count[4] & ~count[3] & ~count[2] & ~count[1] & count[0]);
endmodule

module gen_rst(reset_out, rst, count);
    input rst;
    output reset_out;
    input [4:0] count;
    
    assign reset_out = (count[4] & ~count[3] & ~count[2] & count[1] & ~count[0]) | rst;

endmodule