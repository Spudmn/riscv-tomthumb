library IEEE;
use IEEE.STD_LOGIC_1164.all;

package constants is

constant XLEN:	integer := 32;
constant XLEN_ZERO: std_logic_vector(XLEN-1 downto 0) := X"00000000";
constant XLEN_ONE: std_logic_vector(XLEN-1 downto 0) := X"00000001";

constant RESET_VECTOR: 		std_logic_vector(XLEN-1 downto 0) := X"00000000";
constant TRAP_VECTOR:		std_logic_vector(XLEN-1 downto 0) := X"00000004";
constant INTERRUPT_VECTOR:	std_logic_vector(XLEN-1 downto 0) := X"00000008";


-- Opcodes
constant OP_OP: 		std_logic_vector(4 downto 0) := "01100"; -- R-type
constant OP_CUSTOM0:	std_logic_vector(4 downto 0) := "00010"; -- R-type

constant OP_JALR:		std_logic_vector(4 downto 0) := "11001"; -- I-type
constant OP_LOAD: 	std_logic_vector(4 downto 0) := "00000"; -- I-type
constant OP_OPIMM: 	std_logic_vector(4 downto 0) := "00100"; -- I-type
constant OP_SYSTEM: 	std_logic_vector(4 downto 0) := "11100"; -- I-type
constant OP_MISCMEM: std_logic_vector(4 downto 0) := "00011"; -- I-type?

constant OP_STORE: 	std_logic_vector(4 downto 0) := "01000"; -- S-type

constant OP_BRANCH: 	std_logic_vector(4 downto 0) := "11000"; -- SB-type

constant OP_LUI: 		std_logic_vector(4 downto 0) := "01101"; -- U-type
constant OP_AUIPC: 	std_logic_vector(4 downto 0) := "00101"; -- U-type

constant OP_JAL: 		std_logic_vector(4 downto 0) := "11011"; -- UJ-type

constant FUNC_JALR:	std_logic_vector(2 downto 0) := "000";

-- Functions

constant FUNC_BEQ:	std_logic_vector(2 downto 0) := "000";
constant FUNC_BNE:	std_logic_vector(2 downto 0) := "001";
constant FUNC_BLT:	std_logic_vector(2 downto 0) := "100";
constant FUNC_BGE:	std_logic_vector(2 downto 0) := "101";
constant FUNC_BLTU:	std_logic_vector(2 downto 0) := "110";
constant FUNC_BGEU:	std_logic_vector(2 downto 0) := "111";

constant FUNC_LB:		std_logic_vector(2 downto 0) := "000";
constant FUNC_LH:		std_logic_vector(2 downto 0) := "001";
constant FUNC_LW:		std_logic_vector(2 downto 0) := "010";
constant FUNC_LBU:	std_logic_vector(2 downto 0) := "100";
constant FUNC_LHU:	std_logic_vector(2 downto 0) := "101";

constant FUNC_SB:		std_logic_vector(2 downto 0) := "000";
constant FUNC_SH:		std_logic_vector(2 downto 0) := "001";
constant FUNC_SW:		std_logic_vector(2 downto 0) := "010";

constant FUNC_ADDI:	std_logic_vector(2 downto 0) := "000";
constant FUNC_SLLI:	std_logic_vector(2 downto 0) := "001";
constant FUNC_SLTI:	std_logic_vector(2 downto 0) := "010";
constant FUNC_SLTIU:	std_logic_vector(2 downto 0) := "011";
constant FUNC_XORI:	std_logic_vector(2 downto 0) := "100";
constant FUNC_SRLI_SRAI:	std_logic_vector(2 downto 0) := "101";
constant FUNC_ORI:	std_logic_vector(2 downto 0) := "110";
constant FUNC_ANDI:	std_logic_vector(2 downto 0) := "111";

constant FUNC_ADD_SUB:	std_logic_vector(2 downto 0) := "000";
constant FUNC_SLL:	std_logic_vector(2 downto 0) := "001";
constant FUNC_SLT:	std_logic_vector(2 downto 0) := "010";
constant FUNC_SLTU:	std_logic_vector(2 downto 0) := "011";
constant FUNC_XOR:	std_logic_vector(2 downto 0) := "100";
constant FUNC_SRL_SRA:	std_logic_vector(2 downto 0) := "101";
constant FUNC_OR:		std_logic_vector(2 downto 0) := "110";
constant FUNC_AND:	std_logic_vector(2 downto 0) := "111";

constant FUNC_FENCE:	std_logic_vector(2 downto 0) := "000";
constant FUNC_FENCEI:	std_logic_vector(2 downto 0) := "001";

constant FUNC_SCALL_SBREAK:	std_logic_vector(2 downto 0) := "000";
constant FUNC_RD:	std_logic_vector(2 downto 0) := "010";


constant R0:	std_logic_vector(4 downto 0) := "00000";
constant R1:	std_logic_vector(4 downto 0) := "00001";
constant R2:	std_logic_vector(4 downto 0) := "00010";
constant R3:	std_logic_vector(4 downto 0) := "00011";
constant R4:	std_logic_vector(4 downto 0) := "00100";
constant R5, T0:	std_logic_vector(4 downto 0) := "00101";
constant R6, T1:	std_logic_vector(4 downto 0) := "00110";
constant R7, T2:	std_logic_vector(4 downto 0) := "00111";
constant R8:	std_logic_vector(4 downto 0) := "01000";
constant R9:	std_logic_vector(4 downto 0) := "01001";
constant R10:	std_logic_vector(4 downto 0) := "01010";
constant R11:	std_logic_vector(4 downto 0) := "01011";
constant R12:	std_logic_vector(4 downto 0) := "01100";
constant R13:	std_logic_vector(4 downto 0) := "01101";
constant R14:	std_logic_vector(4 downto 0) := "01110";
constant R15:	std_logic_vector(4 downto 0) := "01111";
constant R16:	std_logic_vector(4 downto 0) := "10000";
constant R17:	std_logic_vector(4 downto 0) := "10001";
constant R18:	std_logic_vector(4 downto 0) := "10010";
constant R19:	std_logic_vector(4 downto 0) := "10011";
constant R20:	std_logic_vector(4 downto 0) := "10100";
constant R21:	std_logic_vector(4 downto 0) := "10101";
constant R22:	std_logic_vector(4 downto 0) := "10110";
constant R23:	std_logic_vector(4 downto 0) := "10111";
constant R24:	std_logic_vector(4 downto 0) := "11000";
constant R25:	std_logic_vector(4 downto 0) := "11001";
constant R26:	std_logic_vector(4 downto 0) := "11010";
constant R27:	std_logic_vector(4 downto 0) := "11011";
constant R28:	std_logic_vector(4 downto 0) := "11100";
constant R29:	std_logic_vector(4 downto 0) := "11101";
constant R30:	std_logic_vector(4 downto 0) := "11110";
constant R31:	std_logic_vector(4 downto 0) := "11111";

-- muxer ports

constant MUX_BUS_ADDR_PORTS: integer := 2;
constant MUX_BUS_ADDR_PORT_ALU: integer := 0;
constant MUX_BUS_ADDR_PORT_PC: integer := 1;

constant MUX_REG_DATA_PORTS: integer := 4;
constant MUX_REG_DATA_PORT_ALU: integer := 0;
constant MUX_REG_DATA_PORT_BUS: integer := 1;
constant MUX_REG_DATA_PORT_IMM: integer := 2;
constant MUX_REG_DATA_PORT_PC: integer := 3;

constant MUX_ALU_DAT1_PORTS: integer := 2;
constant MUX_ALU_DAT1_PORT_S1: integer := 0;
constant MUX_ALU_DAT1_PORT_PC: integer := 1;

constant MUX_ALU_DAT2_PORTS: integer := 3;
constant MUX_ALU_DAT2_PORT_S2: integer := 0;
constant MUX_ALU_DAT2_PORT_IMM: integer := 1;
constant MUX_ALU_DAT2_PORT_INSTLEN: integer := 2;


attribute enum_encoding : string;

-- ALU operations, signalled by decode unit
type aluops_t is (ALU_ADD, ALU_SUB, ALU_AND, ALU_OR, ALU_XOR, ALU_SLT, ALU_SLTU, ALU_SLL, ALU_SRL, ALU_SRA, ALU_BEQ, ALU_BNE, ALU_BLT, ALU_BGE, ALU_BLTU, ALU_BGEU, ALU_JAL, ALU_JALR, ALU_ENABLEI, ALU_DISABLEI, ALU_RTI, ALU_TRAP, ALU_RTT, ALU_GETTRAPRET);
--attribute enum_encoding of aluops_t : type is "sequential";

-- types that denote data sources for operators
type op1src_t is (SRC_S1, SRC_PC);
attribute enum_encoding of op1src_t : type is "sequential";
type op2src_t is (SRC_S2, SRC_IMM);
attribute enum_encoding of op2src_t : type is "sequential";

-- commands for MEM unit
type memops_t is (MEMOP_NOP, MEMOP_READB, MEMOP_READBU, MEMOP_READH, MEMOP_READHU, MEMOP_READW, MEMOP_WRITEB, MEMOP_WRITEH, MEMOP_WRITEW);
attribute enum_encoding of memops_t : type is "one-hot";

-- commands for program counter unit (PCU)
type pcuops_t is (PCU_OUTPC, PCU_SETPC, PCU_OUTTRAPRET, PCU_ENTERTRAP, PCU_RETTRAP, PCU_OUTINTRET, PCU_ENTERINT, PCU_RETINT);

-- commands for register unit
type regops_t is (REGOP_READ, REGOP_WRITE);
attribute enum_encoding of regops_t : type is "sequential";

end constants;

package body constants is
 
end constants;