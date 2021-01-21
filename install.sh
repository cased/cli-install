#!/bin/bash
set -u

rm -rf tmp-guard
git clone https://github.com/cased/guard tmp-guard
cd tmp-client

./install
cd ..
rm -rf tmp-guard
