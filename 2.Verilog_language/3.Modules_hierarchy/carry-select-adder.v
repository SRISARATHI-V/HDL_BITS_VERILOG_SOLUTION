module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1,w2,w3;
    wire[15:0]w4,w5;
    add16 add1(a[15:0],b[15:0],0,sum[15:0],w1);
    add16 add2(a[31:16],b[31:16],0,w4,w2);
    add16 add3(a[31:16],b[31:16],1,w5,w3);
    always @(*)
        case(w1)
            1'b0:sum[31:16]=w4;
            1'b1:sum[31:16]=w5;
        endcase

endmodule
