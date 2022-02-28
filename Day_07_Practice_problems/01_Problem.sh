fun(){
p=$((($RANDOM%900)+100))
echo "$p"
array[$i]=$p
}
for (( i=1; i<=10; i++ ))
do
fun
done
echo "${array[@]}"

max(){
base=${array[1]}
for i in ${array[@]}
do
if [ $base -lt $i ]
then
        base=$i
fi
done
echo "Maximum number is : $base"
}
max