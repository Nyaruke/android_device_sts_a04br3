#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_DIR := device/sts/a04br3

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_a04br3.mk

COMMON_LUNCH_CHOICES := \
    aosp_a04br3-eng \
    aosp_a04br3-userdebug \
    aosp_a04br3-user