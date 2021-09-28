#!/bin/bash
cd  $GITHUB_WORKSPACE
ls
pip install aliyunpan
echo "refresh_token: $ali"  >  ~/.config/aliyunpan.yaml
#Start Upload
aliyunpan-cli r
aliyunpan-cli u $ROM_device Github_Actions
