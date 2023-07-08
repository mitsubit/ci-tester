#!/bin/bash

# A Function to Send Posts to Telegram

cd ~
echo "Uploading File"
curl -T out/target/product/merlinx/*.zip temp.sh

# Exit
exit 0
