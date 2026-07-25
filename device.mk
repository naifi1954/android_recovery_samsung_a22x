#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a22x

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-recovery \
    android.hardware.boot@1.1-impl \
    android.hardware.boot@1.1-service

# Debug
PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Sideload
PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_verifier \
    update_engine_sideload

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
