#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PRODUCT),a04br3)

include $(CLEAR_VARS)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif

KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ

$(KERNEL_OUT):
	mkdir -p $(KERNEL_OUT)

INSTALLED_KERNEL_HEADERS: $(KERNEL_OUT)

