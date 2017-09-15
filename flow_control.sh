#!/bin/bash

set -o verbose

# Pass stdout of program to stdin of another
echo "echo 'hello world'" | bash -

(echo 'stdout'; echo 'stderr' >&2) > stdout 2> stderr
(echo 'stdout'; echo 'stderr' >&2) 2>&1

echo '---------------------------------------------------------------------------------'

# Capturing program output
# $() -< sub shell, same as `` (back ticks) not '
stdout=$(curl 'https://api.ipify.org' 2>redirection_error.txt)
return_code=$(echo $?)
stderr=$(<./redirection_error.txt)

echo "Stdout:       ${stdout}"
echo "Stderr:       ${stderr}"
echo "Return Code:  ${return_code}"

