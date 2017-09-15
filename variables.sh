#!/bin/bash

set -o verbose

# Dereferenceing options
#   $VAR
#   ${VAR}

# $USER current user
echo "${USER}"

# $HOME $USER's 'home' directory
echo "$HOME"

# $PATH
echo $PATH

# Creating a variable
my_var='Bash scripting'

echo ${my_var}

echo '${my_var}'

echo "${my_var} 101"


