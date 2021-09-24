#!/bin/bash
cd $GITHUB_WORKSPACE
pip install aliyunpan
echo "refresh_token: 'b0ceaeaec32c44b882c542ea5cb8100b'"  >  ~/.config/aliyunpan.yaml
aliyunpan-cli u $ROM_device Github_Actions

