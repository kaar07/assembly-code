  ### **Assembly code contains**

  **Executable Instructions**  
  each generate a machine language instruction. Contains opcode.  

  **Assembler directives or pseudo ops**  
  non-executable, non-generating directives that specify assembly process.  

  **Macros**   
  are substitution text.


-----------
  ### **Statements**

  Assembly program --> data,bss,text

  **data**  
    used for declaring initialized data or constants
    data doesn't change during runtime

  **bss**  
    contains statically allocated variables

  **text**   
    contains actual code  
    begins with `global _start`  

-------------
  ### Structure

  [label] mnemonic [operands] [;comments]

---------------
  ### x86- Architecture

  **General Purpose Registers**

  | ## | **REGISTER**               |  **USAGE**                                        |
  |----|----------------------------|----------------------------------------------------|
  | AX | Accumulator Register       |  used in arithmetic operations.                   |
  | CX | Counter Register           |  used in loops and shifts/rotations               |
  | DX | Data Register              |  used in arithmetic operations and I/O operations |
  | BX | Base Register              |  used as pointer to Data                          |
  | SP | Stack Pointer Register     |  pointer to the top of the Stack                  |
  | BP | Base Pointer Register      |  pointer to the base of the Stack                 |
  | SI | Source Index Register      |  pointer to source in stream operations           |
  | DI | Destination Index Register |  pointer to Destination in stream operations      |

  EAX - AX in 32-bit mode (complete mode in 32bit processors)    
  AX  - AX in 16-bit mode  
  RAX - AX in 64-bit mode  
  AH  - AX in 8-bit mode with Most significant bit    
  AL  - AZ in 8-bit mode with Least significant bit  

  -----------

  ## Segment Registers



  | SS - Stack Segment    | Pointer to Stack                   |
  |-----------------------|-------------------------------------|
  | CS - Code Segmet      | Pointer to code                    |
  | DS - Data Segment     | Pointer to Data                    |
  | ES - Extra Segment    | Pointer to extra Data              |
  | FS - F Segment        | Pointer to more extra data         |
  | GS - G Segment        | Pointer to further more extra Data |

----------------
  ### **Register mapping for system calls**  

  #### via *syscall* instruction
  Using *syscall* does not access the interrupt descriptor table.

  | *syscall*           | **REG** |
  |---------------------|---------|
  | System Call Number  | RAX     |
  | 1st parameter       | RDI     |
  | 2nd parameter       | RSI     |
  | 3rd parameter       | RDX     |
  | 4th parameter       | R10     |
  | 5th parameter       | R8      |
  | 6th parameter       | R9      |
  | result              | RAX     |

  #### via *int 0x80* interrupt

  | *syscall*           | **REG** |
  |---------------------|---------|
  | System Call Number  | EAX     |
  | 1st parameter       | EBX     |
  | 2nd parameter       | ECX     |
  | 3rd parameter       | EDX     |
  | 4th parameter       | ESI     |
  | 5th parameter       | EDI     |
  | 6th parameter       | EBP     |
  | result              | EAX     |

------------
