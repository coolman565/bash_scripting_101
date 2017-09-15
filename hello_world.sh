#!/bin/bash
# !/usr/bin/env bash

# Print expanded command  set -x
set -o xtrace

# Using undefinded variables causes error set -u
set -o nounset

# Returns the exit status of last command in the pipe
set -o pipefail

# Exits script on first failure set -e
set -o errexit

# More information on options see: http://tldp.org/LDP/abs/html/options.html

echo "Hello world"
