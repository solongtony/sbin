# First arg is the name of a file.
# Second arg is a command
cat $1 | while read line ; do $2 $line ; done
