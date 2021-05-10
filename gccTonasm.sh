#!/bin/bash
# requires gcc, objconv
# put the follwing in bashrc

# pass in file name only without any extensions
function gccnasm(){
  gcc -O2 -fno-asynchronous-unwind-tables -s -c -o $1.o $1.c
  objconv -fnasm $1.o
  #vim $1.asm
}

# function gcppnasm(){
  # g++ -O2 -fno-asynchronous-unwind-tables -s -c -o $1.o $1.c
  # objconv -fnasm $1.o
  # # vim $1.asm
# }


read filename
gccnasm $filename
