#!/usr/bin/env bash

# Remove existing seed file if it exists
rm -f seed.txt

# Generate a random seed similar in spirit to the Windows %RANDOM% logic
# $RANDOM returns 0–32767, so combining two calls mimics higher entropy
SEED=$(( RANDOM * 32768 + RANDOM ))
echo "$SEED" > seed.txt

# Define range
MIN=4500
MAX=6000

# Calculate range size
RANGE=$(( MAX - MIN + 1 ))

# Generate random number in range
NUMBER=$(( RANDOM % RANGE + MIN ))

# Write number to file
echo "$NUMBER" > size.txt
