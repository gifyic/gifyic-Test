#!/bin/bash
cd  $GITHUB_WORKSPACE
ls
pip install aliyunpan
echo "refresh_token: ${{ secrets.ALI }}"  >  ~/.config/aliyunpan.yaml
#Start Upload
aliyunpan-cli ls
aliyunpan-cli r
aliyunpan-cli u $ROM_device Github_Actions