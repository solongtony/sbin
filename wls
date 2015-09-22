#!/bin/sh
# Show details about an executable on the path.
# Especially useful for seeing where a symlink points to.
ls -l $(which $1)
