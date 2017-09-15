#!/bin/bash

# Pass the output of 'echo' into the program bash
echo "echo 'Hello world'" | bash -

# Print 'rest' of the parameters
echo $@

# Iterate through parameters and print them
for i in "$@"; do
  echo $i
done

