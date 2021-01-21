#!/bin/bash
set -u

rm -rf guard-client
git clone https://github.com/cased/guard tmp-guard
cd tmp-client

./install
cd ..
rm -rf tmp-guard
