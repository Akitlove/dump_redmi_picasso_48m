#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from picasso_48m device
$(call inherit-product, device/xiaomi/picasso_48m/device.mk)

PRODUCT_DEVICE := picasso_48m
PRODUCT_NAME := omni_picasso_48m
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30i 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_picasso_48m-userdebug 13 TQ3A.230805.001 1692161205 release-keys"

BUILD_FINGERPRINT := Redmi/picasso_48m/picasso:12/SKQ1.211006.001/V13.0.4.0.SGICMXM:user/release-keys
