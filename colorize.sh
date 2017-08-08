#!/bin/bash
echo "****************************************"
echo "Colorizing starting at" `date`;
echo "****************************************"

if grep -F "colorizing.sh" $HOME/.bashrc
then
    # code if found
	echo "found file"
else
    # code if not found

	echo "source $HOME/colorizing.sh" >> $HOME/.bashrc


fi
echo "LS_COLORS='$1'" > $HOME/colorizing.sh
echo "export LS_COLORS" >> $HOME/colorizing.sh
source $HOME/.bashrc
chmod 755 $HOME/colorizing.sh

#L_COLORS=$1

#export L_COLORS
