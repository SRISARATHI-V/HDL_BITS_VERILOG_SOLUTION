module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output [4:0] q
);
    always @(posedge clk)
    if (reset) q <= 1;
    else q <= {q[0], q[4], q[3] ^ q[0], q[2], q[1]};

endmodule
