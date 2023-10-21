#!/bin/bash

## Naviagte to correct folder
cd ~/Camera
pwd

## Take a selfie and store it in folder with timestamp
## -o Image lcation, -f full screen preview, -vf, -hf are vertical flips
DATE=$(date +%Y-%m-%d_%H%M)
boldyellow='\x1b[1;33m'

raspistill -f -o selfie_archive/$DATE.jpg
echo -e "${boldyellow}Selfie taken!"


#copy picture to Puclic folder
cp selfie_archive/* /home/pi/Public/



