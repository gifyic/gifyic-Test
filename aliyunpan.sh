#!/bin/bash
pip install aliyunpan
echo "refresh_token: ${{ secrets.ALI }}"  >  ~/.config/aliyunpan.yaml
aliyunpan-cli u  Github_Actions

