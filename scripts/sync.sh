#!/bin/bash 

# Change to the Home Directory
cd ~

repo init --depth=1 --no-repo-verify -u https://github.com/alphadroid-project/manifest.git -b alpha-13 --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/mitsu00/local_manifest.git --depth=1 -b ci .repo/local_manifests
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync --fail-fast -j16

# Exit
exit 0
