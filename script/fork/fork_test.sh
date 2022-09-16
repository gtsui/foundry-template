#!/bin/bash

SOURCE_DIR="$(dirname "$0")/"

source "$SOURCE_DIR../../.env"

forge test \
      --fork-url $RPC_URL \
      --gas-report
