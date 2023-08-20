#!/bin/bash
cd ~
export CCACHE_DISABLE=1

. build/envsetup.sh
export TZ=Asia/Jakarta
lunch lineage_merlinx-user
m bacon
#m bootimage

echo "ls current dir:"
ls -al
echo "\nls out dir:"
ls out/target/product/merlinx/

# Exit
exit 0
