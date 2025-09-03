module nor2(x,y,f);
input x;
input y;
output f;
assign f=~(x|y);
endmodule