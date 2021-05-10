
  #### Running file

  For nasm:
  - Run `nasm -f elf file-name.asm` to create object files.
  - Link using `ld -m elf_i386 object-file-name.o executable-nam` to create an executable file with name *executable-nam*  
  - Finally use `./*executable-nam*` to display output.
  -

  #### Converting C code to nasm using gcc and objconv

  For quick conversion, run : `./gccTonasm.sh`  
  Check the file [gccTonasm.sh](./gccTonasm.sh) for more details.  
