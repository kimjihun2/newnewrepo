#!/bin/bash

echo "...create temp directory..."
mkdir temp
echo "...copy files to temp directory..."
cp num1.txt temp
cp num2.txt temp
cp cal.sh temp

PS3="select menu : "
select parameter in add sub div mul
do
 echo "...$parameter selected..."
 break
done

export parameter
echo "...run calculater..."
bash cal.sh 

exit 1
done
