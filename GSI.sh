#!/bin/bash
echo "------------ Update software list and software ------------"
sudo apt update && sudo apt upgrade -y
echo "------------ clone ErfanGSIs ------------"
git clone --recurse-submodules https://github.com/erfanoabdi/ErfanGSIs.git
cd ErfanGSIs
echo "------------ Remove exit 1 from url2GSI.sh ------------"
line=`sed -n '/    exit 1/=' ./url2GSI.sh`
sed -i "s/ || exit 1//g" ./url2GSI.sh
sed -i "s/exit 1//g" ./url2GSI.sh
sed -i "$line d" ./url2GSI.sh
echo "------------ Execute setup.sh ------------"
sudo bash setup.sh
echo "------------ Compressed output file ------------ "
cd $GITHUB_WORKSPACE/ErfanGSIs
mkdir $ROM_device
cd $ROM_device
zip -q -r $ROM_NAME $GITHUB_WORKSPACE/ErfanGSIs/output


