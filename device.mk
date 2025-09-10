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
    $(LOCAL_PATH)/rootdir/etc/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/etc/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/etc/init.rilproxy.rc:root/init.rilproxy.rc \
    $(LOCAL_PATH)/rootdir/etc/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/enableswap.sh:root/enbaleswap.sh \
    $(LOCAL_PATH)/rootdir/etc/init.mt8167.usb.rc:root/init.mt8167.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.configfs.rc:root/init.usb.configfs.rc \
    $(LOCAL_PATH)/rootdir/etc/init.usb.configfs.rc:root/init.zygote32.rc \
    $(LOCAL_PATH)/rootdir/etc/init.zygote64_32.rc:root/init.zygote64_32.rc \
    $(LOCAL_PATH)/rootdir/etc/init.common_svc.rc:root/init.common_svc.rc \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt8167:root/fstab.mt8167 \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.mt8167.rc:root/init.recovery.mt8167.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/etc/ueventd.mt8167.rc:root/ueventd.mt8167.rc
#   $(LOCAL_PATH)/rootdir/etc/init.environ.rc:root/init.environ.rc  !!WARNING: DO NOT ADD THIS FILE!!
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/recovery/init.rc:recovery/root/init.rc \
    $(LOCAL_PATH)/rootdir/recovery/init.recovery.mt8167.rc:recovery/root/init.recovery.mt8167.rc \
    $(LOCAL_PATH)/rootdir/recovery/fstab.mt8167:recovery/root/fstab.mt8167
#    $(LOCAL_PATH)/rootdir/recovery/ueventd.rc:recovery/root/ueventd.rc \
#    $(LOCAL_PATH)/rootdir/recovery/ueventd.mt8167.rc:recovery/root/ueventd.mt8167.rc \
#    $(LOCAL_PATH)/rootdir/recovery/meta_init.rc:recovery/root/meta_init.rc \
#    $(LOCAL_PATH)/rootdir/recovery/multi_init.rc:recovery/root/multi_init.rc
#    $(LOCAL_PATH)/rootdir/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
#    $(LOCAL_PATH)/rootdir/recovery/meta_init.connectivity.rc:recovery/root/meta_init.connectivity.rc \
#    $(LOCAL_PATH)/rootdir/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
#    $(LOCAL_PATH)/rootdir/recovery/factory_init.connectivity.rc:recovery/root/factory_init.connectivity.rc \
#    $(LOCAL_PATH)/rootdir/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
#    $(LOCAL_PATH)/rootdir/recovery/factory_init.rc:recovery/root/factory_init.rc

$(call inherit-product-if-exists, vendor/sts/a04br3/a04br3-vendor.mk)


