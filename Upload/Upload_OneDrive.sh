#!/bin/bash
cd $GITHUB_WORKSPACE
wget https://github.com/gaowanliang/LightUploader/releases/download/v2.0.1/LightUploader_Linux_x86_64.tar.gz && tar -xzvf LightUploader_Linux_x86_64.tar.gz
chmod +x LightUploader
unzip -P "$OD" config.zip
 ./LightUploader -c actions@fuckod.onmicrosoft.com.json -t 32 -f "$ROM_device" -r "Github Actions"        
         
