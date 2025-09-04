module decode24_tb();
reg e;
reg [1:0]A;
wire [3:0]y;
decode24 uut (e,A,y);
initial begin 
    $dumpfile("decode.vcd");
    $dumpvars(0,uut);
    e=1; A=0; #100;
    A[1]=0; A[0]=0; #100;
    A[1]=0; A[0]=1; #100;
    A[1]=1; A[0]=0; #100;
    A[1]=10; A[0]=1; #100;
end 
endmodule
