#!/bin/bash
echo "****************************************"
echo "Colorizing starting at" `date`;
echo "****************************************"
echo "LS_COLORS='$1'" >> myteste.txt
LS_COLORS=$1
export LS_COLORS
