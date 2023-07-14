#!/bin/bash

cd ~
echo "Uploading File"
curl -T out/target/product/merlinx/*.zip temp.sh
curl -T out/target/product/merlinx/*.apk temp.sh

# Exit
exit 0
