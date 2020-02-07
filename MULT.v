//Andrew Pitcock
//CpE 166
//Lab 2 part 2 
//MULT Verilog Code

module MULT(shb,ld,clr,ldp,shp,clk,db,da,p);
input [3:0] db, da;
input shb, ld, clr, ldp, shp, clk;
output[7:0] p;

wire[3:0] ground, ma_out, mb_out, muxb_out, add_out;
wire cout;

assign ground = 4b'0000;

MB f1(.db(db), .shb(shb), .ld(ld), .clr(clr), .clk(clk), .qb(mb_out[0]));
MA f2(.clr(clr), .ld(ld), .clk(clk), .d1(ma_out), .da(da));
MUXB f3(.d0(ground), .d1(ma_out), .s(mb_out[0]), .y(muxb_out));
adder f4(.a(p[7:4]), .b(muxb_out), .cout(cout), .sum(add_out));
prod f5(.shp(shp), .ldp(ldp), .clr(clr), .clk(clk), .cin(cout), .sum(add_out), .p(p));

endmodule
