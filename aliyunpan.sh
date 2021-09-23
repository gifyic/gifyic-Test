#!/bin/bash
wget https://github.com/Hidove/aliyundrive-uploader/releases/download/v2021.0919.2000/aliyundrive-uploader_linux_amd64.zip
unzip aliyundrive-uploader_linux_amd64.zip
chmod +x aliyundrive-uploader_linux_amd64
cat>config.json<<EOF
${{ secrets.ALI }}
EOF
sudo ./aliyundrive-uploader_linux_amd64

