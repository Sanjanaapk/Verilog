module decode24(
    input e,
    input [1:0]A,
    output [3:0]y 
);
assign y[0]=e&~A[1]&~A[0];
assign y[1]=e&~A[1]&A[0];
assign y[2]=e&A[1]&~A[0];
assign y[3]=e&A[1]&A[0];
endmodule
