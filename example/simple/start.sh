#!/bin/bash
if [ -z $LIGHTSTEP_ACCESS_TOKEN ]
then
  echo "LIGHTSTEP_ACCESS_TOKEN must be set"
  exit -1
fi

DATA_ROOT=$PWD/simple-data
mkdir -p $DATA_ROOT

node node/server.js&
echo $! >> $DATA_ROOT/pids

LUA_CPATH=$PWD/../../?.so haproxy -f haproxy/haproxy.cfg&
echo $! >> $DATA_ROOT/pids
