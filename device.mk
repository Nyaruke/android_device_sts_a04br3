#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/sts/a04br3

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

TARGET_LOCALES := ja_JP en_US

PRODUCT_PACKAGES += \
    fstab.mt8167 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.common_svc.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt8167.rc \
    init.mt8167.usb.rc \
    init.project.rc \
    init.rilproxy.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    init.recovery.mt8167.rc \
    ueventd.mt8167.rc

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
    $(LOCAL_PATH)/rootdir/etc/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/init.common_svc.rc:root/init.common_svc.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/etc/multi_init.rc:root/multi_init.rc \
    $(LOCAL_PATH)/rootdir/etc/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/etc/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/etc/factory_init.rc:root/factory_init.rc

$(call inherit-product-if-exists, vendor/sts/a04br3/a04br3-vendor.mk)


