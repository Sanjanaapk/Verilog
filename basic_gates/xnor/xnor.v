module xnor2(
    input x,
    input y,
    output f
);
assign f=~(x^y);
endmodule