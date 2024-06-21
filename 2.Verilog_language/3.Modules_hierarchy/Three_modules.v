module top_module ( input clk, input d, output q );
    wire x,y;
    my_dff m0(.clk(clk),.d(d),.q(x));
    my_dff m1(.clk(clk),.d(x),.q(y));
    my_dff m2(.clk(clk),.d(y),.q(q));
    

endmodule
