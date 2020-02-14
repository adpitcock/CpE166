# CpE166
This lab assigned was to design a 4 by 4 shift multiplier for CSUS CpE 166 Lab. The multiplier consists of one 4 bit 
d flip flop register(MA.v), one 4 bit shift d flip flop(MB.v), one 4 bit multiplexer(MUXB.v), one 4 bit adder(adder.v), 
and one product shift register(prod.v). It then uses a top level design of those chips mentioned prior(MULT.v). There 
is a moore FSM that is needed to produce a certain order of the load and shift signals so that the data gets loaded 
and shifted correctly(FSM.v). Lastly, there is a hiearchial design file that integrates the FSM.v and MULT.v such that
there is only two 4 bit multiplicand inputs, a clock input for the FSM, a reset for the FSM, and an 8 bit product 
output. The top file is simply labeled as TOP.v
