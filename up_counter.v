module up_counter(count, rst, clk);
    output reg [4:0] count;
    input rst, clk;
    
    always @(posedge clk) begin
        if(rst) count = 5'b0;
        else count = count + 5'b1;
    end //end always
endmodule