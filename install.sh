#!/bin/bash
set -u

rm -rf guard-client
git clone https://github.com/cased/guard-client
cd guard-client

./install
cd ..
rm -rf guard-client
