#! /bin/sh

curl -sX POST -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_getBlockByHash","params":["'$1'", false], "id": 1}' localhost:8545 | jq ".result.number" | xargs printf "%d\n"
