#!bin/bash
cd $GITHUB_WORKSPACE
wget https://github.com/tickstep/cloudpan189-go/releases/download/v0.1.1/cloudpan189-go-v0.1.1-linux-amd64.zip -q
unzip cloudpan189-go-v0.1.1-linux-amd64.zip
cd cloudpan189-go-v0.1.1-linux-amd64
cloudpan189-go login -username=`echo ${cloud189##* }` -password=`echo ${cloud189% *}`
./cloudpan189-go u ../"$ROM_device" /Github_Actions
