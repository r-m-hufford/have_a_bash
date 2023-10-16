#!/bin/bash
## are there args
if [ "$#" -eq 0 ]; then
  echo "no args provided"
else
  result=$(echo "$1" | cut -c-4)
  echo "args: $result"
fi

## world of numbers
## given two number find sum, dif, product, qnt
read X; read Y;

add=$(($X+$Y))
let sub="$X - $Y"
let mul=$X*$Y
let div=$X/$Y

echo $add;
echo $sub;
echo $mul;
echo $div;

## personalized echo
## read input name. log out welcome message
read name
echo "Welcome $name"

## Looping and Skipping
## print odds from 1 - 99
for i in {1..99}
do
  if (( $i % 2 == 1 ))
  then
    echo $i
  fi
done

or

for (( i=1; i<=99; i++ ))
do
  if (( $i % 2 == 1 ))
  then
    echo $i
  fi
done

## Looping with Numbers
## print natural numbers from 1-50
for (( i=1; i<=50; i++))
do
  echo $i
done

## Comparing Numbers
## given x and y print equality
read X
read Y

if (( $X > $Y ))
then
  echo "X is greater than Y"
elif (( $X < $Y))
then
  echo "X is less than Y"
else
  echo "X is equal to Y"
fi

## getting started with conditionals
## read a char and say if it is Y or X
read line
#out put a YES or No
if [ $line = "Y" ] || [ $line = "y" ]
then
echo "YES"
else
echo "NO"
fi

## more on conditionals
## given 3 ints identify triangle type
read X 
read Y 
read Z

if [ $X -eq $Y ] && [ $X -eq $Z ]; then
  echo "EQUILATERAL"
elif 
# x conditions
[ $X -eq $Y ] && [ $X -ne $Z ] || 
[ $X -eq $Z ] && [ $X -ne $Y ] ||
#y condiditons 
[ $Y -eq $Z ] && [ $Y -ne $X ] ||
[ $Y -eq $X ] && [ $Y -ne $Z ] ||
#z conditions
[ $Z -eq $X ] && [ $Z -ne $Y ] ||
[ $Z -eq $Y ] && [ $Z -ne $X ]
then
  echo "ISOSCELES"
else
  echo "SCALENE"
fi