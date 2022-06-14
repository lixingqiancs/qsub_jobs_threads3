#!/bin/sh
if [ $# -ne 2 ]
    then
    echo "usage: sh qsub.sh <node_num> <makefile>"
    exit 1
fi
node_num=$1
mk=$2
qsub -cwd -v PATH -q all.q -pe make $node_num qmake.sh $mk
