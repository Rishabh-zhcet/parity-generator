`timescale 1ns / 1ps

module Top_module_tb();
reg w,clk;
wire p;

Top_module DUT( w,clk,p);

initial
begin
clk=0; w=0;
end

initial repeat (260) #10 clk= ~clk;
initial repeat (200) #12 w= $random;

endmodule
