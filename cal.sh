#!/bin/bash
PS3="select menu : "
value[0]=$(<num1.txt)
value[1]=$(<num2.txt)

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
     let result=${value[0]}+${value[1]}
     ;;
 sub)
     let result=${value[0]}-${value[1]}
     ;;
 div)
     let result=${value[0]}/${value[1]}
     ;;
 mul)
     let result=${value[0]}*${value[1]}
     ;;
esac

echo
echo "num1 : ${value[0]}"
echo "num2 : ${value[1]}"
echo "op : $op"
echo "result : $result"
exit 1;
done 
