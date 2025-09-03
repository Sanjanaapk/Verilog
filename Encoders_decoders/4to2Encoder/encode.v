 module encode42(
 input e,
  input [3:0] i,
 output [1:0] y);
    assign y[1]=(e&i[2])|(e&i[3]);
    assign y[0]=(e&i[1])|(e&i[3]);
 endmodule