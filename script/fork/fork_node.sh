#!/bin/bash

SOURCE_DIR="$(dirname "$0")/"

source "$SOURCE_DIR../../.env"

anvil --fork-url $FORK_PROVIDER_URL `### RPC URL of the blockchain to fork ###` \
      --fork-block-number $FORK_BLOCK_NUMBER `### Block number of the blockchain to fork ###` \
