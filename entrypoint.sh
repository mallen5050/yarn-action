#!/bin/sh

set -e

env
rm -f ./.npmrc


sh -c "yarn $*"
