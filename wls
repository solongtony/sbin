#!/bin/sh
# Show details about an executable on the path.
# Especially useful for seeing where a symlink points to.
target=$(which $1 || echo $1)
ls -l $target
