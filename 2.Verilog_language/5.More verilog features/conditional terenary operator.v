module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0]w1,w2;
    assign w1=a<b?a:b;
    assign w2=w1<c?w1:c;
    assign min=w2<d?w2:d;
endmodu
