module PipelineProcessor (
    input clk,
    input reset
);

// Define registers and memories
reg [15:0] instruction_memory [0:15];
reg [15:0] data_memory [0:15];
reg [15:0] register_file [0:7];
reg [3:0] pc = 0;

// Pipeline registers
reg [15:0] IF_ID_instr;
reg [15:0] ID_EX_op1, ID_EX_op2;
reg [2:0] ID_EX_rd;
reg [3:0] ID_EX_opcode;
reg [15:0] EX_MEM_result;
reg [2:0] EX_MEM_rd;
reg EX_MEM_write;
reg [15:0] MEM_WB_data;
reg [2:0] MEM_WB_rd;
reg MEM_WB_write;

// Opcodes
localparam NOP = 4'b0000,
           ADD = 4'b0001,
           SUB = 4'b0010,
           LOAD = 4'b0011,
           STORE = 4'b0100;

// INSTRUCTION FETCH (IF)
always @(posedge clk) begin
    if (reset) begin
        pc <= 0;
    end else begin
        IF_ID_instr <= instruction_memory[pc];
        pc <= pc + 1;
    end
end

// INSTRUCTION DECODE (ID)
always @(posedge clk) begin
    ID_EX_opcode <= IF_ID_instr[15:12];
    ID_EX_rd <= IF_ID_instr[2:0];
    ID_EX_op1 <= register_file[IF_ID_instr[11:9]];
    ID_EX_op2 <= register_file[IF_ID_instr[8:6]];
end

// EXECUTE (EX)
always @(posedge clk) begin
    EX_MEM_write <= 0;
    case (ID_EX_opcode)
        ADD: begin
            EX_MEM_result <= ID_EX_op1 + ID_EX_op2;
            EX_MEM_rd <= ID_EX_rd;
            EX_MEM_write <= 1;
        end
        SUB: begin
            EX_MEM_result <= ID_EX_op1 - ID_EX_op2;
            EX_MEM_rd <= ID_EX_rd;
            EX_MEM_write <= 1;
        end
        LOAD: begin
            EX_MEM_result <= data_memory[ID_EX_op2];
            EX_MEM_rd <= ID_EX_rd;
            EX_MEM_write <= 1;
        end
        STORE: begin
            data_memory[ID_EX_op2] <= ID_EX_op1;
        end
    endcase
end

// WRITE BACK (WB)
always @(posedge clk) begin
    if (EX_MEM_write) begin
        register_file[EX_MEM_rd] <= EX_MEM_result;
    end
end

endmodule
