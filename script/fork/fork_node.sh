#!/bin/bash

SOURCE_DIR="$(dirname "$0")/"

source "$SOURCE_DIR/../../.env"

anvil --fork-url $RPC_URL
