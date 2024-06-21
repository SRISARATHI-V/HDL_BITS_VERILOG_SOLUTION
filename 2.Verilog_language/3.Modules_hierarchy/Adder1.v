module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1,c2;
    wire [15:0] w1,w2;
    add16 add0(.a(a[15:0]),.b(b[15:0]),.cin(0),.sum(w1),.cout(c1));
    add16 add1(.a(a[31:16]),.b(b[31:16]),.cin(c1),.sum(w2),.cout(c2));
    assign sum={w2,w1};

endmodule
