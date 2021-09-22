#!/bin/bash
echo "------------ Update software list and software ------------"
sudo apt update && sudo apt upgrade -y
echo "------------ clone ErfanGSIs ------------"
git clone --recurse-submodules https://github.com/erfanoabdi/ErfanGSIs.git
cd ErfanGSIs
echo "------------ Execute setup.sh ------------"
sudo bash setup.sh


