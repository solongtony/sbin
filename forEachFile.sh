# First arg is a command that takes a filename as the only arg.
for file in $(ls)
do
  "$1" "$file"
done
