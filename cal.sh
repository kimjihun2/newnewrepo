#!/bin/bash
PS3="select menu : "
value=$(<num1.txt)
value2=$(<num2.txt)

if [ -v parameter ] 
then
 op=$parameter
else
 echo "...none operator parameter...."
 select op in add sub div mul
 do
   break
 done
fi

case $op in
 add)
     let result=$value+$value2
     ;;
 sub)
     let result=$value-$value2
     ;;
 div)
     let result=$value/$value2
     ;;
 mul)
     let result=$value*$value2
     ;;
esac

echo
echo "num1 : $value"
echo "num2 : $value2"
echo "op : $op"
echo "result : $result"
exit 1;
done 
