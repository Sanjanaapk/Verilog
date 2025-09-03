module stimulus();
 reg x, y;
 wire f;
 or2 uut(x,y,f);
 initial
 begin
$dumpfile("or2.vcd");    // waveform dump file
    $dumpvars(0, stimulus); 
 x=0; y=0; #100;
 x=0; y=1; #100;
 x=1; y=0; #100;
 x=1; y=1; #100;
 end
 endmodule