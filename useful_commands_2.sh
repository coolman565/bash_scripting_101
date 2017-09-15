#!/bin/bash

set -o verbose
set -o nounset
set -o errexit

# Find a process e.g. google chrome
ps aux | grep google | wc -l


