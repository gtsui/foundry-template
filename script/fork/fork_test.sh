#!/bin/bash

SOURCE_DIR="$(dirname "$0")/"

source "$SOURCE_DIR../../.env"

forge test \
      --fork-url $FORK_PROVIDER_URL `### RPC URL of the blockchain to fork ###` \
      --fork-block-number $FORK_BLOCK_NUMBER `### Block number of the blockchain to fork ###` \
      -vvv `### (Verbosity) -vv: print console.log's, -vvv: print trace for failing tests, -vvvv: print trace for ALL tests ###` \
      `### --gas-report ### Turns on analysis for function gas costs ###` \
