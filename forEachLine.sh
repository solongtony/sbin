# First arg is the name of a file.
# Second arg is a command, which is given one line as input
while read line
do
  $2 $line
done < $1
