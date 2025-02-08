#!/bin/bash

# Run infinite
sh infinite.sh

# Kill the infinite process via its PID
kill -9 $(ps -ef | grep "/usr/bin/sh" | grep -v "grep" | awk '{print $2}')
