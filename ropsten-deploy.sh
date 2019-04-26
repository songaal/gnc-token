#!/bin/bash

echo "Start Ropsten"

output=log/ouput_$(date '+%Y-%m-%dT%H:%M:%S').log

echo "Migrate Run"
truffle migrate --reset --network ropsten  >> $output
echo "Migrate Finish"

echo "output >> "$output
echo "Successful."