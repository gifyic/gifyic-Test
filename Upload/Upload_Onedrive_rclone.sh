#!/bin/bash
cd $GITHUB_WORKSPACE
curl https://rclone.org/install.sh | sudo bash
mkdir -p ~/.config/rclone/
unzip -P ${{ secrets.PASSWD }} rclone.zip -d ~/.config/rclone/
rclone copy  od:
