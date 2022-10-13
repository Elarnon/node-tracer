#!/bin/bash

# Stop processing in case of errors
set -eu

# Make sure we don't get messed up by somebody exporting their CPATH by error.
unset CDPATH

# Get the directory in which the script file is.
DIR="$(cd "$(dirname "$0")" && pwd)"

NODE_OPTIONS="offline-tracer track-heap-objects" "$DIR"/node "$@"
