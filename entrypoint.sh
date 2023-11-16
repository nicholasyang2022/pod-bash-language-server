#!/bin/sh
set -e
WORKDIR="$1"
cd "$WORKDIR"
exec /usr/local/bin/bash-language-server start
