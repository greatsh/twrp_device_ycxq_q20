#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G10J_A13 device
$(call inherit-product, device/knc/G10J_A13/device.mk)

PRODUCT_DEVICE := G10J_A13
PRODUCT_NAME := omni_G10J_A13
PRODUCT_BRAND := KNC
PRODUCT_MODEL := G10J_A13
PRODUCT_MANUFACTURER := knc

PRODUCT_GMS_CLIENTID_BASE := android-knc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_tb8786p1_64_k419-user 12 SP1A.210812.016 mp1V1565 release-keys"

BUILD_FINGERPRINT := joyar/joyar_mid/joyar_mid:12/SP1A.210812.016/mp1V1565:user/release-keys
