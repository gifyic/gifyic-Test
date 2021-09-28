#!/bin/bash
cd $GITHUB_WORKSPACE
git clone https://github.com/Aruelius/wenshushu.git && cd wenshushu
pip install requests base58 pycryptodomex
chmod +x wss.py
python wss.py upload ../$ROM_device/$ROM_NAME
