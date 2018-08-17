#! /bin/sh

NUMBER=$(printf "0x%x" $1)
echo Fetching block $NUMBER
curl -sX POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["'$NUMBER'", false], "id": 1}' localhost:8545 | jq ".result.hash"

