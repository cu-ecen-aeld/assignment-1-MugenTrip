#!/bin/sh

writefile=$1
writestr=$2

if [ -z "$writefile" ]
then
    echo "Argument 1 were not defined."
    exit 1
elif [ -z "$writestr" ]
then
    echo "Argument 2 were not defined."
    exit 1
fi

dir="$(dirname $writefile)"
echo "$dir"
if [ ! -d "$dir" ]
then
    echo "Creating directory..."
    mkdir -p "$dir"
fi

echo "$writestr" > "$writefile"
