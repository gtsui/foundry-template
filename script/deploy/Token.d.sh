#!/bin/bash

SOURCE_DIR="$(dirname "$0")/"

source "$SOURCE_DIR/../.env"

forge create "$SOURCE_DIR/../src/Token.sol:Token" \
      --rpc-url $RPC_URL \
      --private-key $KEY \
      --constructor-args "Test Token" "TOKEN" 18 \
      --etherscan-api-key $ETHERSCAN_API_KEY \
      --verify
