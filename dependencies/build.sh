#!/usr/bin/env bash

set -euo pipefail

# serial
mkdir serial/build
cd serial/build
cmake -DDISABLE_CATKIN=ON -DCATKIN_ENABLE_TESTING=OFF ..
make
sudo make install
cd ../..
