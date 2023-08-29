#!/bin/bash
cd ~
export CCACHE_DISABLE=1
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
. build/envsetup.sh
export TZ=Asia/Jakarta
lunch evolution_merlinx-user
mka evolution
#m bootimage

echo "ls current dir:"
ls -al
echo "\nls out dir:"
ls out/target/product/merlinx/

# Exit
exit 0
