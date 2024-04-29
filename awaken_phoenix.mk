#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some flags for AwakenOS
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS=true
TARGET_SUPPORTS_GOOGLE_RECORDER=true
USE_PIXEL_CHARGER = true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

PRODUCT_NAME := awaken_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := Redmi/phoenix/phoenix:11/RKQ1.200826.002/21.9.28:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="phoenix-user 11 RKQ1.200826.002 21.9.28 release-keys"
