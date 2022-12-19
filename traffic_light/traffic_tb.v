`timescale 1ns / 1ns
`include "traffic.v"

module traffic_tb;

reg CURR, NSC, EWC;
wire NEXT;

traffic uut(CURR, NSC, EWC, NEXT);

initial begin
	
	$dumpfile("traffic_tb.vcd");
	$dumpvars(0, traffic_tb);
	
	{CURR, NSC, EWC} = 3'd0;	#20;
	{CURR, NSC, EWC} = 3'd1;	#20;
	{CURR, NSC, EWC} = 3'd2;	#20;
	{CURR, NSC, EWC} = 3'd3;	#20;
	{CURR, NSC, EWC} = 3'd4;	#20;
	{CURR, NSC, EWC} = 3'd5;	#20;
	{CURR, NSC, EWC} = 3'd6;	#20;
	{CURR, NSC, EWC} = 3'd7;	#20;
	
	$display("Test complete");

end

endmodule