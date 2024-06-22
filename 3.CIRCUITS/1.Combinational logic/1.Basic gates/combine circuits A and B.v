module top_module (input x, input y, output z);
    wire w1,w2,w3,w4,w5,w6;
    A Ia1(x,y,w1);
    
    B Ib1(x,y,w2);
    A Ia2(x,y,w3);
    B Ib2(x,y,w4);
   assign w5=w1|w2;
   assign w6=w3&w4;
    assign z=w5^w6;
    
    
    

endmodule
module A(x,y,z);
    input x,y;
    output z;
    assign z=(x^y)&x;
endmodule
module B(x,y,z);
    input x,y;
    output z;
    assign z=~(x^y);
endmodule
