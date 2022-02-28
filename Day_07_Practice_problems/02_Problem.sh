for (( i=1; i<=10; i++))
do
R=$((($RANDOM%900)+100))
arr[$R]=$R
echo $R
done
echo "Sorted array ${arr[@]}"
max(){
base=0
for i in ${arr[@]}
do
if [ $base -lt $i ]
then
        base=$i
fi
done
echo "Max number is : $base"
}
echo
max
second=0
for i in ${arr[@]}
do
if [ $i -ne $base ]
then
if [ $second -lt $i ]
then
        second=$i
fi
fi
done
echo "Second Max number is : $second"
echo

min(){
basemin=$base
for i in ${arr[@]}
do
if [ $basemin -gt $i ]
then
        basemin=$i
fi
done
echo "Min number is : $basemin"
}
min
secondmin=$base
for i in ${arr[@]}
do
if [ $i -ne $basemin ]
then
if [ $secondmin -gt $i ]
then
        secondmin=$i
fi
fi
done
echo "Second Min number is : $secondmin"