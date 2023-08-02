#!/bin/bash
cd ~

. build/envsetup.sh
export KBUILD_BUILD_USER=mitsu00
export TZ=Asia/Jakarta
lunch lineage_merlinx-user
make bacon

echo "ls current dir:"
ls -al
echo "\nls out dir:"
ls out/target/product/merlinx/

# Exit
exit 0
