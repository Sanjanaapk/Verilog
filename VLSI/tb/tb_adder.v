`timescale 1ns/1ps
module tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;

  adder4 uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  initial begin
    $dumpfile("dump.vcd");     // waveform file
    $dumpvars(0, tb);         // dump all signals in tb

    // stimulus
    a = 4'd0; b = 4'd0; cin = 0; #10;
    a = 4'd3; b = 4'd5; cin = 0; #10;
    a = 4'd7; b = 4'd8; cin = 1; #10;
    $display("a=%0d b=%0d cin=%b => sum=%0d cout=%b", a, b, cin, sum, cout);
    #10 $finish;
  end
endmodule
