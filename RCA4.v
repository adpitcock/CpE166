//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//4 bit Ripple Carry Adder Verilog Code
module RCA4(a,b,sum,cin,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire [3:0]c;


FA g1(.a(a[0]),.b(b[0]),.cin(cin),.cout(c[0]),.sum(sum[0]));
FA g2(.a(a[1]),.b(b[1]),.cin(c[0]),.cout(c[1]),.sum(sum[1]));
FA g3(.a(a[2]),.b(b[2]),.cin(c[1]),.cout(c[2]),.sum(sum[2]));
FA g4(.a(a[3]),.b(b[3]),.cin(c[2]),.cout(cout),.sum(sum[3]));

endmodule
