#!/bin/bash

if [ $1 == 'clone' ]
then

  git clone https://github.com/ZioMus1357/Dawid-Gorka-Bootloader
  

elif [ $1 == 'run' ]
then

  cd Dawid-Gorka-Bootloader
  cd test_srodowiska
  as -o test.o test.S
  ld --oformat binary -o test.img -Ttext 0x7C00 test.o
  qemu-system-i386 -drive file=test.img,format=raw
  rm test.o
  rm test.img
  cd ../..

elif [ $1 == 'clean' ]
then

  rm -rf Dawid-Gorka-Bootloader

fi

exit 0
