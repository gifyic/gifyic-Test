#!/bin/bash
git clone https://github.com/Hidove/aliyundrive-uploader.git
cd aliyundrive-uploader
pip install -r requirements.txt
rm -rf example.config.json
echo -e $ali > config.json
chmod +x main.py
python3 main.py
