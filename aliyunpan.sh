#!/bin/bash
cd $GITHUB_WORKSPACE
pip install aliyunpan
echo "refresh_token: dcfa219721d547b79e703e6147deb942"  >  ~/.config/aliyunpan.yaml
aliyunpan-cli u $ROM_device Github_Actions

