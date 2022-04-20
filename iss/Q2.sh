#!/bin/bash

grep . quotes.txt | awk 'BEGIN {FS="~"} {printf("%s once said \"%s\"\n",$2,$1)}' > speech.txt