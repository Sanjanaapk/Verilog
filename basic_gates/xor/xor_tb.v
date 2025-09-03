module stimulus();
reg x,y;
wire f;
xor2 uut (x,y,f);
initial begin 
    $dumpfile ("xor2.vcd");
    $dumpvars (0,stimulus);
x=0;y=0;#100;
x=0;y=1;#100;
x=1;y=0;#100;
x=1;y=1;#100;
end
endmodule