module traffic (CURR, NSC, EWC, NEXT);

	input CURR, NSC, EWC;
	output NEXT; 

	assign NEXT = ~CURR & EWC | ~NSC & EWC;

endmodule