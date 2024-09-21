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
colored-task "list files in folder (stdout silenced)" "ls -lhr"
sleep 0.2
colored-task "create a files" "touch z" "x" "f"
sleep 0.2
colored-task "remove files" "rm z" "x" "f"
sleep 0.2
colored-task "sleep 2"
sleep 0.2
colored-task "fake-missing-command"
sleep 0.2
colored-task "echo long goodbye, this should never be run"

