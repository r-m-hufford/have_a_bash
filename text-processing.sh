## cut 1
## give n lines, print 3rd char
while read line;
do
  echo "${line}" | cut -c3
done

## cut 2
## print 2nd and 7th char from each string
while read line
do
  echo ${line} | cut -c2,7
done

## cut 3
## print range from 2nd to 7th char
while read line;
do
  echo $line | cut -b 2-7
done

## without cut
while read line;
do
  echo ${line:1:6}
done

## cut 4
## display first four characters from each string
while read line
do
  echo $line | cut -b -4
done

## cut 5
## display first three fields of tab separated file
while read line
do
  echo "$line" | cut -f -3
done

## cut 6
## given a line of text print from the 13th character to the end
while read line
do
  echo "$line" | cut -c 13-
done

## cut 7
## given an input find and print the fourth word
while read line
do
  echo "$line" | cut -d ' ' -f 4
done


## cut 8
## given a sentence print the first three words
while read line
do
  echo "$line" | cut -d' ' -f -3
done

## cut 9
## given a tsv print the second to last value of each entry
while read line
do
  echo "$line" | cut -f 2-
done

## head of a text file 1
## display the first 20 lines of text in a file
head -n 20

## head of a text file 2
# display the first 20 chars of a text file
head -c 20

## head of a text file 3
## display lines 12 - 22 of a text file
head -n 22 | tail -11

## Tail of a text file 1
## display the last 20 lines of a text file
tail -n 20

## tail of a text file 2
## display the last 20 chars of a text file
tail -c 20

## Tr Command 1
## replace all parentheses with box brackets
tr '()' '[]'
## tr will replace all occurrences of the first character
## in the first set with the first character in the second set

## Tr Command 2
## delete all lower case letters
tr -d [a-z]

## Tr Command 3
## replace all sequences of multiple spaces with a single space
tr -s ' '

## Sort Command 1
## sort in ascending order
sort

## Sort Command 2
## sort in descending order
sort -r

## Sort Command 3
## sort numbers in ascending
sort -n

## Sort Command 4
## sort numbers in descending
## a linux 101 moment here. keys can be stacked
## thus -n -r is equivalent to -nr
sort -nr

## Sort Command 5
## sort a tab delimited file in descending order of the second column
sort -t $'\t' -k2 -nr

## Sort Command 6
## sort a tab delimited file in ascending order of the second column
sort -t $'\t' -k2 -n
