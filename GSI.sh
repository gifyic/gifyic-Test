#!/bin/bash
sudo apt update && sudo apt upgrade -y
git clone --recurse-submodules https://github.com/erfanoabdi/ErfanGSIs.git
cd ErfanGSIs
line=`sed -n '/    exit 1/=' ./url2GSI.sh`
#Remove Exit
sed -i "s/ || exit 1//g" ./url2GSI.sh
sed -i "s/exit 1//g" ./url2GSI.sh
sed -i "$line d" ./url2GSI.sh
sudo bash setup.sh
sudo bash ./url2GSI.sh --$GSI_TYPE $ROM_URL $OS_TYPE
cd ..
mkdir $ROM_device
cd $ROM_device
zip -q -r $ROM_NAME $GITHUB_WORKSPACE/ErfanGSIs/output
sudo mv $GITHUB_WORKSPACE/ErfanGSIs/output/*.txt ./head.md
sudo sed -i 's/.*/&  /' ./head.md
echo "----------------------------"
cd ..
ls
