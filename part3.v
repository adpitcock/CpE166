//Andrew Pitcock
//CpE 166
//Lab 2 Part 3
//Seven Segment Display
module fpga_fun( clk, seg, dig);
 
input clk;
output [7:0] seg;
output [7:0] dig; 
 
parameter N = 18;
 
reg [N-1:0] count; 
reg [3:0] d; 
reg [7:0] seg;
reg [7:0] an; 

always @ (posedge clk)
 begin
  count <= count + 1;
  
  case(count[N-1:N-3])  
   0:
    begin
     d = 4'd7;
     an = 8'b11111110;
    end
    
   1:  
    begin
     d = 4'd6;
     an = 8'b11111101;
    end
    
   2:  
    begin
     d = 4'd5; 
     an = 8'b11111011;
    end
     
   3:  
    begin
     d = 4'd4;
     an = 8'b11110111;
    end
    
   4:
    begin
     d = 4'd3;
     an = 8'b11101111;
    end
        
   5:  
    begin
     d = 4'd2;
     an = 8'b11011111;
    end
        
   6:  
    begin
     d = 4'd1;
     an = 8'b10111111;
    end
         
   7:  
    begin
     d = 4'd0;
     an = 8'b01111111;
    end
  endcase
 end
assign dig = an;
 

 
always @ (dd)
 begin
  seg[7] = 1'b1; 
  case(d)
     4'd0 : seg[6:0] = 7'b1000110; //C
     4'd1 : seg[6:0] = 7'b0001100; //P
     4'd2 : seg[6:0] = 7'b0000110; //E
     4'd3 : seg[6:0] = 7'b1111001; //1
     4'd4 : seg[6:0] = 7'b0000010; //6
     4'd5 : seg[6:0] = 7'b0000010; //6
     4'd6 : seg[6:0] = 7'b0001000; //A
     4'd7 : seg[6:0] = 7'b0001100; //P
   default : seg[6:0] = 7'b1111111; //blank
  endcase
 end 
 
endmodule
