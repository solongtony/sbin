# First arg is the name of a file.
<<<<<<< HEAD
# Second arg is a command
cat $1 | while read line ; do $2 $line ; done
=======
# Second arg is a command, which is given one line as input
while read line
do
  $2 $line
done < $1
>>>>>>> 9147af8 (all loval changes)
