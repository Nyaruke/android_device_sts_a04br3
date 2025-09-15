#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/sts/a04br3

# API levels
# PRODUCT_SHIPPING_API_LEVEL := 27

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.rc:root/init.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.usb.rc:root/init.mt8167.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt8167:root/fstab.mt8167 \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.mt8167.rc:root/init.recovery.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.mt8167.rc:root/ueventd.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/etc/init.rilproxy.rc:root/init.rilproxy.rc \
    $(LOCAL_PATH)/rootdir/etc/init.modem.rc:root/init.modem.rc

$(call inherit-product-if-exists, vendor/sts/a04br3/a04br3-vendor.mk)


