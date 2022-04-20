#!/bin/bash

echo "Q1-a"
grep . quotes.txt

echo "Q1-b"
awk '!a[$0]++' quotes.txt