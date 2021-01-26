#!/bin/bash
set -u
set -e

trap '[cased-install] error' ERR

message() {
  echo "[cased-install] An error has occurred. If you received a 'Permission Denied' error, you may need to run this script as sudo."
  echo "[cased-install] Please also visit https://docs.cased.com/docs/troubleshooting for more help."
}

rm -rf /tmp/tmp-guard
git clone https://github.com/cased/guard /tmp/tmp-guard
cd /tmp/tmp-guard

./install
cd ..
rm -rf /tmp/tmp-guard
