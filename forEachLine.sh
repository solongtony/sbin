# First arg is the name of a file.
# Second arg is a command, which is given one line as input

# Read all lines into an array first
declare -a lines
while IFS="" read -r line || [ -n "$line" ]
do
  lines+=("$line")
done < "$1"

# Process each line
for line in "${lines[@]}"
do
  #echo "DEBUG: Processing line: $line" >&2
  # Look for {} and repalce it with the line.
  # This will break if there is a quoted {} in the line.
  if [[ "$2" == *"{}"* ]]
  then
  #if grep -q '{}' "$line" 2>/dev/null; then
    #cmd="${2/{}/$line}"
    # Use sed for more reliable substitution
    cmd=$(echo "$2" | sed "s#{}#$line#g")
    #echo "DEBUG: Running command: $cmd" >&2
    $cmd
  else
    #echo "DEBUG: Running direct command: $2 \"$line\"" >&2
    $2 "$line"
  fi
done
