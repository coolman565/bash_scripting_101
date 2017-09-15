#!/bin/bash

set -o verbose
set -o errexit
set -o nounset

# Iterate through output of ls command
for file in $(ls); do
  echo $file
done

# Iterate while condition is true
COUNTER=0
while [[ $COUNTER -lt 5 ]]; do
  let COUNTER=COUNTER+1
  echo $COUNTER
done

# Iterate while condition is false
COUNTER=0
until [[ $COUNTER -gt 5 ]]; do
  let COUNTER+=1
  echo $COUNTER
done
