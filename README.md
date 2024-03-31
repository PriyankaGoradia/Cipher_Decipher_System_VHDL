# Cipher_Decipher_System_VHDL

## Overview
- This project focuses on enhancing and examining a simple central processing unit (CPU) implemented with standard digital hardware components, leveraging a provided VHDL (VHSIC Hardware Description Language) model.
- My primary objective is to augment the existing CPU design with new functionalities, thereby deepening my understanding of CPU architecture, particularly its capability to execute machine language instructions through a controller and datapath architecture.
- Key tasks include designing and verifying an instruction-handling datapath using Register Transfer Level (RTL) hardware blocks, implementing a Finite State Machine (FSM) controller to sequence instruction fetching, decoding, and execution, and integrating the controller with the datapath to create a fully functional CPU. This CPU will be further integrated with a seven-segment display on an FPGA (Field-Programmable Gate Array) for a basic user interface.

## Motivation
- The motivation behind this project is to equip myself with practical skills and theoretical knowledge crucial for digital system design, specifically in CPU architecture.
- By modifying and verifying a CPU model, I gain invaluable hands-on experience in hardware design and an understanding of the intricate processes involved in executing machine language instructions. This project not only fosters a deeper comprehension of digital logic and computer architecture but also prepares me for advanced challenges in the fields of computer engineering and digital system design.
- Through this exercise, I bridge the gap between theoretical concepts and real-world application, enhancing my capabilities as a future engineer in this dynamic and evolving technological landscape.

## Features
- This custom program implements a cipher deciphering system. It takes user input, which is a value to be ciphered or deciphered, and a choice between cipher or decipher.
- Based on the user input, the program either jumps to the cipher or decipher operation. Both cipher and decipher states carry out inverse functions of each other.
- To verify the correctness of the operations, the program generates a cipher for the user input and records the displayed cipher value. These ciphered values are then used as input for deciphering in a second iteration of the program. The result should match the original user input.
- Special conditions are implemented to prevent data loss while ciphering. If a ciphered/deciphered value is zero, ciphering/deciphering respectively is done again. It's important to note that this special operation doesn’t change the ciphered/deciphered value.

## Code
The code for this cipher decipher system can be found in the `controller.vhd` file.
