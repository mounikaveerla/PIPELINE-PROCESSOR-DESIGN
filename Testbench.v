module TestPipelineProcessor;

reg clk = 0;
reg reset = 1;
PipelineProcessor uut (.clk(clk), .reset(reset));

// Clock generation
always #5 clk = ~clk;

initial begin
    // Initialize memories and registers
    $display("Starting test...");

    // Reset pulse
    #10 reset = 0;

    // Load instructions
    uut.instruction_memory[0] = 16'b0001000010010001; // ADD R1 = R1 + R2
    uut.instruction_memory[1] = 16'b0010000110100010; // SUB R2 = R3 - R4
    uut.instruction_memory[2] = 16'b0011001010000011; // LOAD R3 = MEM[R5]
    uut.instruction_memory[3] = 16'b0100001101100100; // STORE MEM[R6] = R7
    uut.instruction_memory[4] = 16'b0000000000000000; // NOP

    // Register initialization
    uut.register_file[1] = 5;
    uut.register_file[2] = 3;
    uut.register_file[3] = 10;
    uut.register_file[4] = 2;
    uut.register_file[5] = 5;
    uut.register_file[6] = 6;
    uut.register_file[7] = 20;
    uut.data_memory[5] = 99;

    // Run for a few clock cycles
    #100;

    // Check result
    $display("R1 = %d", uut.register_file[1]);
    $display("R2 = %d", uut.register_file[2]);
    $display("R3 = %d", uut.register_file[3]);
    $display("Memory[6] = %d", uut.data_memory[6]);

    $stop;
end

endmodule
