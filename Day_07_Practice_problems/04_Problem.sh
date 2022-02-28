read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

sum=$(($a+$b+$c))

if(( $sum == 0 ))
then
    echo "True"
else
    echo "False"
fi