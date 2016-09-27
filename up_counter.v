module up_counter(count, rst, clk);
    output reg [4:0] count;
    input rst, clk;
    
    initial begin
        count <= 0;
    end
    
    always @(posedge clk) begin
        if(rst) count <= 0;
        else count <= count + 1;
    end //end always
endmodule