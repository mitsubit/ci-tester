#!/bin/bash 

# Change to the Home Directory
cd ~

repo init --depth=1 --no-repo-verify -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs
git clone https://github.com/mitsu00/local_manifest.git --depth=1 -b ci .repo/local_manifests
repo sync -qc --no-clone-bundle --optimized-fetch --prune --force-sync --fail-fast -j8

echo "clang check: "
ls /root/prebuilts/clang/host/linux-x86/


# Exit
exit 0
