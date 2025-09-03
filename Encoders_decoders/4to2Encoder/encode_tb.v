 module encode42_tb( );
    reg e;
    reg [3:0]i;
    wire [1:0]y;
    encode42 uut(e,i,y);
    initial begin
        $dumpfile("encode.vcd");
        $dumpvars(0,encode42_tb);
    e=1;i=0;#100;
    i[0]=1;i[1]=0;i[2]=0;i[3]=0;#100;
    i[0]=0;i[1]=1;i[2]=0;i[3]=0;#100;
    i[0]=0;i[1]=0;i[2]=1;i[3]=0;#100;
    i[0]=0;i[1]=0;i[2]=0;i[3]=1;#100;
 end   
endmodule