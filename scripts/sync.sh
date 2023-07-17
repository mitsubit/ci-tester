#!/bin/bash 

# Change to the Home Directory
cd ~

repo init --depth=1 --no-repo-verify -u https://github.com/LineageOS/android.git -b lineage-18.1 --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/mitsubit/local.git --depth 1 -b a11 .repo/local_manifests
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync --fail-fast -j8

# Exit
exit 0
