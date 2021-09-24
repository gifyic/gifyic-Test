#!/bin/bash
cd $GITHUB_WORKSPACE
pip install aliyunpan
echo "refresh_token: $ali"  >  ~/.config/aliyunpan.yaml
aliyunpan-cli u $ROM_device Github_Actions

