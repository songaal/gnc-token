#!/bin/bash

output=log/ouput_$(date '+%Y-%m-%dT%H:%M:%S').log


echo "Migrate Run"
truffle migrate --reset --network live  --verbose-rpc >> $output
echo "Migrate Finish"

echo "output >> "$output
echo "Successful."