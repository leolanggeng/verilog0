# verilog0

Project0: ALU Wave
• A module is a block of Verilog code that implements certain functionality. Modules can be embedded within other modules, and a higher-level module can communicate with is lower-level modules using their input and output ports. A module represents a design unit that implements specific behavioral characteristics and will get converted into a digital circuit during synthesis.
o When initializing a model, it is recommended to name it accordingly to the Verilog file. ▪ Ex: Alu_Contro.v -> module Alu_Control ()
o The inputs and outputs variables are first put inside the parenthesis of module () ▪ Ex: module Alu_Control(opcode, func_field, alu_control);
o Each module has to be closed with “endmodule”
• Input is a Verilog keyword for input.
o Ex: input [5:0] opcode; // [5:0] means that it is 6 bits
• Output is a Verilog keyword for output.
o Ex: output reg [2:0] alu_control; // [2:0] means that it is 3 bits • Reg keyword in Verilog is used for describing logic.
o For left hand side of signals assigned inside in always blocks
• Wire keyword in Verilog is a wire represents a physical wire in a circuit and is used to connect gates
or modules. The value of a wire can be read, nut not assigned tom in a function or block. o For left hand side of signals assigned outside always blocks.
• During the behavioral model simulation, all the flows defined by the always and initial statements start together at simulation time zero.
o The always statements are executed repetitively.
o In always @ (*), (*) means “build the sensitivity list for me”.
• Alu_Control module is the signal which is sent to the ALU core to indicate what type of operation is
to be performed.
o Control signal for the ALU which determines the type of operation to be performed by
looking at either the opcode for I-Type or function field for R-Type instructions.
• Alu_Core module performs the desired operation from Alu_Control.
• Alu_Top module instantiates and connects both the Alu_Control and Alu_Core modules.
• To store the output in waveform, we must include the following code inside initial begin in Alu_Top
module
o $dumpfile("Alu_Top_tb.vcd");
o $dumpvars(0, Alu_Top_tb);
• To run the simulation, open the terminal and run the following commands:
o
o o o
iverilog -o Alu_Top_tb.vvp Alu_Top_tb.v // synthesizing the test bench module to .vvp from the .v
// to run the simulation // view the wave form
// open the .vcd file in GTKWave
