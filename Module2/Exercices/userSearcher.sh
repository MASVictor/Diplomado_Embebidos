#!/bin/bash

# Get the first parameter and store it in the variable user
USER="$1"

# Pipe the content of the file /etc/passwd to a grep to show if the user exists
cat /etc/passwd |\
    grep -e "^$USER.*/home/"

