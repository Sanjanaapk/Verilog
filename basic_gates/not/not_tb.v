module stimulus();
 reg x;
 wire f;
 not2 uut(x,f);
 initial
 begin
$dumpfile("not2.vcd");    // waveform dump file
    $dumpvars(0, stimulus); 
 x=0;  #100;
 x=0;  #100;
 x=1;  #100;
 x=1;  #100;
 end
 endmodule