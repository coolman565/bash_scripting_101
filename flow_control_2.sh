#!/bin/bash

set -o verbose

# Running multiple successive commands

echo -n "Command one" && echo "Command two"

echo "Command one" || echo "Command two"

$(exit 1) && echo "AND: Command one"

$(exit 1) || echo "OR: Command one"



