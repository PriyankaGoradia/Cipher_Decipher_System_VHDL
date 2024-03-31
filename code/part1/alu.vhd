----------------------------------------------------------------------------------
-- Company: Department of Electrical and Computer Engineering, University of Alberta
-- Engineer: Shyama Gandhi and Bruce Cockburn
-- Create Date: 10/29/2020 07:18:24 PM
-- Module Name: cpu - structural(datapath)
-- Description: CPU LAB 3 - ECE 410 (2023)
-- Revision:
-- Revision 0.01 - File Created
-- Revision 1.01 - File Modified by Raju Machupalli (October 31, 2021)
-- Revision 2.01 - File Modified by Shyama Gandhi (November 2, 2021)
-- Revision 3.01 - File Modified by Antonio Andara (October 31, 2023)
-- Additional Comments:
--******************************************************************************
-- Total eights operations can be performed using 3 select lines of this ALU.
-- The select line codes have been given to you in the lab manual.
-- In future, this alu is scalable to say, 16 operations using 4 select lines.
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- arith library is outdated; use numeric library instead
-- using numeric we are always forced to use type casting; use VHDL's string typing property

ENTITY alu IS
    PORT( alu_sel     : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
        ; input_a     : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
        ; input_b     : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
        ; bits_rotate : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
        ; alu_out     : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
        );
END alu;

ARCHITECTURE Dataflow OF alu IS
BEGIN
--*************************************************************************************************
-- fix the syntax errors in this file
-- verify that the operations match the ALU operations table (Table 3) from the lab manual
-- fix the type errors
    WITH alu_sel SELECT
        alu_out <= input_a WHEN "0000",
                    input_a AND input_b WHEN "0001",
                    STD_LOGIC_VECTOR(rotate_left(unsigned(input_a), 
                                     to_integer(unsigned((bits_rotate)))
                                     )
                         ) WHEN "0010", 
                    STD_LOGIC_VECTOR(rotate_right(unsigned(input_a), 
                                     to_integer(unsigned((bits_rotate)))
                                     )
                         ) WHEN "0011",
                    STD_LOGIC_VECTOR(unsigned(input_a) + unsigned(input_b)) WHEN "0100",
                    STD_LOGIC_VECTOR(unsigned(input_a) - unsigned(input_b)) WHEN "0101",
                    STD_LOGIC_VECTOR(unsigned(input_a) + 1) WHEN "0110",
                    STD_LOGIC_VECTOR(unsigned(input_a) - 1) WHEN "0111",
                    -- TWO new operations in the ALU
                    NOT input_a WHEN "1000",
                    STD_LOGIC_VECTOR(shift_left(unsigned(input_a), 1)) WHEN "1001",
                    (OTHERS => '0') WHEN OTHERS;
--*************************************************************************************************
END Dataflow;