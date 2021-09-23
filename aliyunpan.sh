#!/bin/bash
git clone https://github.com/Hidove/aliyundrive-uploader.git
cd aliyundrive-uploader
pip install -r requirements.txt
mv example.config.json config.json
echo -e "${{ secrets.ALI }}" > config.json
chmod +x main.py
python3 main.py