#!/bin/bash

chmod +x infinite.sh

# Run infinite
sh infinite.sh

# Get process ID (PID)
PID=$(ps -ef | grep "/usr/bin/sh" | grep -v "grep" | awk '{print $2}')

# Kill the infinite process via its PID
kill -9 $PID
