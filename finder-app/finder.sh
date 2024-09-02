#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
    echo "Missing Arguments or Incomplete"
fi

if [ ! -d "$filesdir" ]
then
    echo "Argument-1/ is not a directory or it is missing."
    exit 1
fi

if [ -z "$searchstr" ]
then
   echo "Argument-2/Search-string was not specified."
   exit 1
fi

N_files="$(ls $filesdir | wc -l)"
N_match="$(grep -r $searchstr $filesdir | wc -l)"
echo "The number of files are $N_files and the number of matching lines are $N_match"


