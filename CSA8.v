//Andrew Pitcock 
//CpE 166
//Lab 2 part 1
//Carry Select Adder Verilog Code
module CSA8(a,b,cin,sum,cout);
input [7:0] a,b;
input cin;
output [7:0] sum;
output cout;

wire [7:0]sa,sb;
wire m,x1,x2,x3,x4;

RCA4 g1(.a(a[3:0]),.b(b[3:0]),.sum(sa[3:0]),.cin(0),.cout(x1));
RCA4 g2(.a(a[3:0]),.b(b[3:0]),.sum(sb[3:0]),.cin(1),.cout(x2));
MUX g3(.d0(x1),.d1(x2),.s(cin),.y(m));
MUXB g4(.d0(sa[3:0]),.d1(sb[3:0]),.s(cin),.y(sum[3:0]));

RCA4 g5(.a(a[7:4]),.b(b[7:4]),.sum(sa[7:4]),.cin(0),.cout(x3));
RCA4 g6(.a(a[7:4]),.b(b[7:4]),.sum(sb[7:4]),.cin(1),.cout(x4));
MUX g7(.d0(x3),.d1(x4),.s(m),.y(cout));
MUXB g8(.d0(sa[7:4]),.d1(sb[7:4]),.s(m),.y(sum[7:4]));

endmodule
