#!/bin/bash
cd $GITHUB_WORKSPACE
pip install aliyunpan
echo "refresh_token: '80cff98a9c65495b9ce65a1b34d7083c'"  >  ~/.config/aliyunpan.yaml
aliyunpan-cli u $GITHUB_WORKSPACE/Redmi_Note7_Pro Github_Actions

