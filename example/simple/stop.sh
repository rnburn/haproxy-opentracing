#!/bin/bash

DATA_ROOT=$PWD/simple-data

while read pid; do
  kill $pid
done <$DATA_ROOT/pids
rm $DATA_ROOT/pids
