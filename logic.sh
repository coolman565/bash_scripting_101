#!/usr/bin/env bash

set -o verbose
set -o errexit

# man test

# POSIX if
if [ "this" = 'that' ]; then
  echo True
else
  echo False
fi

# Bash if
if [[ "this" -eq 'that' ]]; then
  echo True
elif [[ "this" -eq 'this' ]]; then
  echo False
fi

# Arithmetic if
if (( 1 + 1 == 3 )); then
  echo True
else
  echo False
fi

# Sub-shell if
if (exit 1); then
  echo True
else
  echo False
fi

