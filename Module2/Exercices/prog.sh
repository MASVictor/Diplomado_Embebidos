#!/bin/bash

# Pipe the output of the command df to the input of grep
# Filter by a regex that starts with /dev/ and the next character is 's' or 'm'
df |\
    grep -e "^/dev/[ms]" 

