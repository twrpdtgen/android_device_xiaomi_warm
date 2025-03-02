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

# Inherit from warm device
$(call inherit-product, device/xiaomi/warm/device.mk)

PRODUCT_DEVICE := warm
PRODUCT_NAME := omni_warm
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := warm
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="warm_global-user 14 UKQ1.240624.001 V816.0.5.0.UGVINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/warm_global/warm:14/UKQ1.240624.001/V816.0.5.0.UGVINXM:user/release-keys
