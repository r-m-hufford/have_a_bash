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