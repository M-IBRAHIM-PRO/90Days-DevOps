#!/bin/bash

echo "Creating Directories $1  from $2 to $3"

eval mkdir "$1{$2..$3}"

echo "Directories created."
