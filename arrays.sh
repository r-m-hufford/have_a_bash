## Read in an Array
## Given a list oc counties, each a new line
## read them into an array. print the array
COUNTER=0
while read line
do
  COUNTRIES[COUNTER]=$line
  ((COUNTER=COUNTER+1))
done

echo ${COUNTRIES[@]}

