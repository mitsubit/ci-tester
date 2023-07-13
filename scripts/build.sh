#!/bin/bash
cd ~

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export BUILD_USERNAME=ozip
export BUILD_HOSTNAME=ozip
export TZ=Asia/Jakarta
lunch lineage_merlinx-user
m bacon

# Exit
exit 0
