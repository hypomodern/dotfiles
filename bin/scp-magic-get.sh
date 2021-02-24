#!/bin/bash

# Fetch a file from a host in a datacenter. Example:
# ./get-file.sh my-datacenter my-host ~/my.file

# spawn tunnel
ssh -n -t -t -L 22000:$2:22 $1 &
TUNNEL=$!
sleep 5

# need to turn off host checking because localhost:22000 will change as
# you connect to different datacenters
scp -r -P 22000 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no localhost:$3 ./

kill $TUNNEL
