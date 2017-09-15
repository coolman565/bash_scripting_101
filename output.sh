#!/bin/bash

# Echo print to stdout
echo "Hello stdout"

# Redirect echo to print to stderr
echo "Hello stderr" 1>&2

# Exit with exit code
exit 42

