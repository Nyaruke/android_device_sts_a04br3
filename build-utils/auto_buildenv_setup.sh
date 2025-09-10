#!/bin/bash
WORK_DIR="lineage14.1"

# directory setup
cd $HOME
rm -rf ${WORK_DIR}
mkdir ${WORK_DIR}
cd ${WORK_DIR}

# setup git
git config --global user.name "android"
git config --global user.email "android"

# setup lineage source
yes n | sh -c "repo init -u https://github.com/LineageOS/android.git -b cm-14.1 --depth=1"
repo sync -j8 -f --force-sync --no-clone-bundle

# setup vendor
git clone https://github.com/mouseos/vendor_benesse_TAB-A04-BR3.git vendor/sts/a04br3
mv vendor/sts/a04br3/TAB-A04-BR3-vendor.mk vendor/sts/a04br3/a04br3-vendor.mk
sed -i 's/TAB-A04-BR3/a04br3/g' vendor/sts/a04br3/a04br3-vendor.mk
sed -i 's/benesse/sts/g' vendor/sts/a04br3/a04br3-vendor.mk
sed -i 's/TAB-A04-BR3/a04br3/g' vendor/sts/a04br3/Android.mk
sed -i 's/benesse/sts/g' vendor/sts/a04br3/Android.mk

# setup device tree
git clone https://github.com/Nyaruke/android_device_sts_a04br3-test device/sts/a04br3
mv device/sts/a04br3/build-utils/try-build.sh ./

# setup kernel source
git clone https://github.com/Nyaruke/android_kernel_sts_a04br3-auto.git kernel/sts/a04br3
