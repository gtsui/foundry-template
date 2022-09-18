#!/bin/bash

SOURCE_DIR="$(dirname "$0")/"

source "$SOURCE_DIR../../.env"

forge test \
      --fork-url $FORK_URL \
      --gas-report
