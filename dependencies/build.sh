#!/usr/bin/env bash

set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# serial
mkdir -p "$DIR/serial/build"
cd "$DIR/serial/build"
cmake -DDISABLE_CATKIN=ON -DCATKIN_ENABLE_TESTING=OFF ..
make
sudo make install
