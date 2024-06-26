module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out=(~c&~b)| ~a&~d | b&c&d | a&c&d;

endmodule
