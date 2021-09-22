#!/bin/bash
#更新软件列表及软件
sudo apt update && sudo apt upgrade -y
#获取工具 ErfanGSIs
git clone --recurse-submodules https://github.com/erfanoabdi/ErfanGSIs.git
cd ErfanGSIs
#setup.sh
sudo bash setup.sh

