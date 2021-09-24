#!/bin/bash
cd $GITHUB_WORKSPACE
pip install aliyunpan
echo "refresh_token: ${{ secrets.ALI }}"  >  ~/.config/aliyunpan.yaml
aliyunpan-cli u $ROM_device Github_Actions

