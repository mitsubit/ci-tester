#!/bin/bash
cd ~

. build/envsetup.sh
export TZ=Asia/Jakarta
lunch arrow_merlinx-user
mka bacon
#m bootimage

echo "ls current dir:"
ls -al
echo "\nls out dir:"
ls out/target/product/merlinx/

# Exit
exit 0
