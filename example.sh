#!/usr/bin/env bash

# exit if any command has a non-zero exit status 
set -euo pipefail

# if colored-task is not found in path, source local file
if [[ `which colored-task` == "" ]]; then
  source ./colored-task.sh
fi

# if colored-msg is not found in path, source local file
if [[ `which colored-msg` == "" ]]; then
  source ./colored-msg.sh
fi

colored-msg "BLU" "this is a simple message in blue"
sleep 0.2
colored-task "create file z.txt" "touch z.txt"
sleep 0.2
colored-task "ls -lha"
sleep 0.2
colored-task "cat long name file" "cat 'long name with spaces.txt'"
sleep 0.2
colored-task "git init"
sleep 0.2
colored-task "rytrtuywrtrqwer"
sleep 0.2
colored-task "echo long goodbye"


