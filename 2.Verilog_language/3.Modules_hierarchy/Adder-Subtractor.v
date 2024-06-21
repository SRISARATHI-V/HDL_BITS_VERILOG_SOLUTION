module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w1,w2;
    wire [31:0]w3;
    assign w3={32{sub}}^b;
    add16 add1(a[15:0], w3[15:0], sub, sum[15:0], w1);
    add16 add2(a[31:16], w3[31:16], w1, sum[31:16],w2);
	

endmodule
