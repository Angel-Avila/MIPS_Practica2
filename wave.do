onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow -itemcolor Yellow /MIPS_Processor_TB/clk
add wave -noupdate -color Red -itemcolor red /MIPS_Processor_TB/reset
add wave -noupdate /MIPS_Processor_TB/PortIn
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/ALUResultOut
add wave -noupdate /MIPS_Processor_TB/PortOut
add wave -noupdate /MIPS_Processor_TB/DUV/Instruction_wire
add wave -noupdate -divider Control
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/RegDst
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchEQ
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchNE
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemRead
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemtoReg
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemWrite
add wave -noupdate -color {Medium Orchid} -itemcolor {Medium Orchid} /MIPS_Processor_TB/DUV/ControlUnit/ALUSrc
add wave -noupdate -color Gold -itemcolor Gold /MIPS_Processor_TB/DUV/ControlUnit/RegWrite
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ControlUnit/ALUOp
add wave -noupdate -divider ProgramMemory
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/Address
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/Instruction
add wave -noupdate -divider ALU
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUOperation
add wave -noupdate -color {Orange Red} -itemcolor {Orange Red} /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/A
add wave -noupdate -color {Medium Slate Blue} -itemcolor {Medium Slate Blue} /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/B
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/Zero
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUResult
add wave -noupdate -divider Pipe_IF_ID
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/FetchDecode_Register/Instruction_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/FetchDecode_Register/Instruction_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/FetchDecode_Register/PC_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/FetchDecode_Register/PC_OUT
add wave -noupdate -divider Pipe_ID_EX
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/BranchEQ_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchEQ
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/BranchEQ_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/BranchNE_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchNE
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/BranchNE_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Jump_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/Jump
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Jump_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/MemRead_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemRead
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/MemRead_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/MemWrite_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemWrite
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/MemWrite_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/MemToReg_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemtoReg
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/MemToReg_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Jal_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/Jal
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Jal_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/AluSrc_IN
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/AluSrc_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/RegWrite_IN
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/RegWrite_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/rt_IN
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/rt_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/PC_PlusFour_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/PC_PlusFour_OUT
add wave -noupdate -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[31]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[30]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[29]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[28]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[27]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[26]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[25]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[24]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[23]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[22]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[21]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[20]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[19]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[18]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[17]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[16]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[15]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[14]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[13]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[12]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[11]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[10]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[9]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[8]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[7]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[6]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[31]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[30]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[29]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[28]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[27]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[26]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[25]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[24]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[23]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[22]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[21]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[20]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[19]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[18]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[17]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[16]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[15]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[14]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[13]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[12]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[11]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[10]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[9]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[8]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[7]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[6]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Shifted_Instruction_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/RD1_IN
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/RD1_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/RD2_IN
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/RD2_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/ExtendedImm_IN
add wave -noupdate /MIPS_Processor_TB/DUV/DecodeExecute_Register/ExtendedImm_OUT
add wave -noupdate -color Gold -itemcolor Gold /MIPS_Processor_TB/DUV/DecodeExecute_Register/clk
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/ALUOp_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnitControl/ALUOperation
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/ALUOp_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Shamt_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/Shamt_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/JrFlag_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/DecodeExecute_Register/JrFlag_OUT
add wave -noupdate -divider Pipe_EX_MEM
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/BranchEQ_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/BranchEQ_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/BranchNE_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/BranchNE_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Jump_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Jump_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/MemRead_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/MemRead_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/MemWrite_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/MemWrite_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/MemToReg_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/MemToReg_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Jal_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Jal_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/ExecuteMemory_Register/rt_IN
add wave -noupdate /MIPS_Processor_TB/DUV/ExecuteMemory_Register/rt_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/PC_PlusFour_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/PC_PlusFour_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/BranchAdder_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/BranchAdder_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Shifted_Instruction_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Shifted_Instruction_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/RD2_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/RD2_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/ALUResult_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/ALUResult_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Zero_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/Zero_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/JrFlag_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ExecuteMemory_Register/JrFlag_OUT
add wave -noupdate -divider Pipe_MEM_WB
add wave -noupdate -color Gold -itemcolor Gold /MIPS_Processor_TB/DUV/MemoryWriteback_Register/clk
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/MemToReg_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/MemToReg_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/Jal_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/Jal_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/RegWrite_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/RegWrite_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/ReadData_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/ReadData_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/ALUResult_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/ALUResult_OUT
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/PC_PlusFour_IN
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MemoryWriteback_Register/PC_PlusFour_OUT
add wave -noupdate /MIPS_Processor_TB/DUV/MemoryWriteback_Register/rt_IN
add wave -noupdate /MIPS_Processor_TB/DUV/MemoryWriteback_Register/rt_OUT
add wave -noupdate -divider {Read/Imm MUX}
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForReadDataAndInmediate/Selector
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForReadDataAndInmediate/MUX_Data0
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForReadDataAndInmediate/MUX_Data1
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForReadDataAndInmediate/MUX_Output
add wave -noupdate -divider RegisterFile
add wave -noupdate -color Gold -itemcolor Gold /MIPS_Processor_TB/DUV/Register_File/clk
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/RegWrite
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/WriteRegister
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadRegister1
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadRegister2
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/WriteData
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadData1
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadData2
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Intercnection_wire
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/SelectRegister_wire
add wave -noupdate -divider Registers
add wave -noupdate -label a0 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_a0/DataOutput
add wave -noupdate -label a1 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_a1/DataOutput
add wave -noupdate -label a2 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_a2/DataOutput
add wave -noupdate -label t0 /MIPS_Processor_TB/DUV/Register_File/Register_t0/DataOutput
add wave -noupdate -label t1 /MIPS_Processor_TB/DUV/Register_File/Register_t1/DataOutput
add wave -noupdate -label t2 /MIPS_Processor_TB/DUV/Register_File/Register_t2/DataOutput
add wave -noupdate -label t3 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_t3/DataOutput
add wave -noupdate -label s0 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_s0/DataOutput
add wave -noupdate -label s1 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_s1/DataOutput
add wave -noupdate -label s2 /MIPS_Processor_TB/DUV/Register_File/Register_s2/DataOutput
add wave -noupdate -label s7 /MIPS_Processor_TB/DUV/Register_File/Register_s7/DataOutput
add wave -noupdate -label sp -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_sp/DataOutput
add wave -noupdate -label ra /MIPS_Processor_TB/DUV/Register_File/Register_ra/DataOutput
add wave -noupdate -divider MUX_WD
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForWriteData/Selector
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForWriteData/MUX_Data0
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForWriteData/MUX_Data1
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForWriteData/MUX_Output
add wave -noupdate -divider MUX_ForRegPC
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForReg_PC/Selector
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForReg_PC/MUX_Data0
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForReg_PC/MUX_Data1
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForReg_PC/MUX_Output
add wave -noupdate -divider DataMemory
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Data_Memory/ReadData
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Data_Memory/WriteData
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Data_Memory/Address
add wave -noupdate -divider Jump
add wave -noupdate -label ShiftIN /MIPS_Processor_TB/DUV/JumpShifter/DataInput
add wave -noupdate -label ShiftOUT /MIPS_Processor_TB/DUV/JumpShifter/DataOutput
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForJumps/Selector
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForJumps/MUX_Data0
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForJumps/MUX_Data1
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForJumps/MUX_Output
add wave -noupdate -divider Jr
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForJr/Selector
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForJr/MUX_Data0
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForJr/MUX_Data1
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForJr/MUX_Output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 165
configure wave -valuecolwidth 123
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {44 ps}
