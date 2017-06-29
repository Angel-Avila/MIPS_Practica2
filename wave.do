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
add wave -noupdate -color {Orange Red} -itemcolor {Orange Red} -radix hexadecimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/A
add wave -noupdate -color {Medium Slate Blue} -itemcolor {Medium Slate Blue} -radix hexadecimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/B
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/Zero
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUResult
add wave -noupdate -divider RegisterFile
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/RegWrite
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/WriteRegister
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadRegister1
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadRegister2
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/WriteData
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadData1
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/ReadData2
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/Intercnection_wire
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/SelectRegister_wire
add wave -noupdate -divider Registers
add wave -noupdate -label a0 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_a0/DataOutput
add wave -noupdate -label a1 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_a1/DataOutput
add wave -noupdate -label a2 -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_a2/DataOutput
add wave -noupdate -label t0 /MIPS_Processor_TB/DUV/Register_File/Register_t0/DataOutput
add wave -noupdate -label sp -radix hexadecimal /MIPS_Processor_TB/DUV/Register_File/Register_sp/DataOutput
add wave -noupdate -divider MUX_WD
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForWriteData/Selector
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForWriteData/MUX_Data0
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForWriteData/MUX_Data1
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/MUX_ForWriteData/MUX_Output
add wave -noupdate -divider DataMemory
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Data_Memory/ReadData
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Data_Memory/WriteData
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/Data_Memory/Address
add wave -noupdate -radix hexadecimal {/MIPS_Processor_TB/DUV/Data_Memory/ram[2]}
add wave -noupdate -radix hexadecimal {/MIPS_Processor_TB/DUV/Data_Memory/ram[1]}
add wave -noupdate -radix hexadecimal {/MIPS_Processor_TB/DUV/Data_Memory/ram[0]}
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
WaveRestoreCursors {{Cursor 1} {3 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {84 ps}
