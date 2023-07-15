#!/bin/bash
cd ~

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export KBUILD_BUILD_USER=mitsuaa
export TZ=Asia/Jakarta
lunch lineage_merlinx-user
make bacon -j12

echo "ls current dir:"
ls -al
echo "\nls out dir:"
ls out/target/product/merlinx/

# Exit
exit 0
