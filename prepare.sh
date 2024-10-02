#!/bin/bash

# install python3.9
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.9-venv python3.9-full python3.9-distutils
make install-dependencies
source ./.venv/bin/activate

wget https://zenodo.org/records/7645179/files/custom_seeds.tar.gz?download=1 -O custom_seeds.tar.gz
tar -xvf custom_seeds.tar.gz
