//Andrew Pitcock
//CpE 166
//Lab 2 part 1
//Full Adder Verilog code
module FA(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire m,n,p;

HA g1(.a(a),.b(b), .sum(m), .cout(n));
HA g2(.a(cin), .b(m), .sum(sum), .cout(p));

assign cout = p|n;

endmodule
