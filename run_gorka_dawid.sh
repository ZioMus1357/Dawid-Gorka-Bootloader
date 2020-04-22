#!/bin/bash

if [ $1 == 'clone' ]
then

  git clone https://github.com/ZioMus1357/Dawid-Gorka-Bootloader
  

elif [ $1 == 'run' ]
then

  cd Dawid-Gorka-Bootloader
  cd test_srodowiska
  ./run_test
  rm test.o
  rm test.img
  cd ..

elif [ $1 == 'clean' ]
then

  rm -rf Dawid-Gorka-Bootloader

fi

exit 0
