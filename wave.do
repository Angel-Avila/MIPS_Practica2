onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow -itemcolor Yellow /MIPS_Processor_TB/clk
add wave -noupdate -color Red -itemcolor red /MIPS_Processor_TB/reset
add wave -noupdate /MIPS_Processor_TB/PortIn
add wave -noupdate /MIPS_Processor_TB/ALUResultOut
add wave -noupdate /MIPS_Processor_TB/PortOut
add wave -noupdate -divider Control
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/RegDst
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchEQ
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/BranchNE
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemRead
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemtoReg
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/MemWrite
add wave -noupdate -color {Medium Orchid} -itemcolor {Medium Orchid} /MIPS_Processor_TB/DUV/ControlUnit/ALUSrc
add wave -noupdate -color Gold -itemcolor Gold /MIPS_Processor_TB/DUV/ControlUnit/RegWrite
add wave -noupdate /MIPS_Processor_TB/DUV/ControlUnit/ALUOp
add wave -noupdate -divider ProgramMemory
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/Address
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/Instruction
add wave -noupdate -divider ALU
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUOperation
add wave -noupdate -color {Orange Red} -itemcolor {Orange Red} /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/A
add wave -noupdate -color {Medium Slate Blue} -itemcolor {Medium Slate Blue} /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/B
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44 ps} 0}
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
WaveRestoreZoom {42 ps} {54 ps}
