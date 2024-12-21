#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_PHONE_LINK_SUPPORTED := true
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Custom stuff.
PRODUCT_NO_CAMERA := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_FINGERPRINT_UNLOCK_SUPPORTED := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
MIST_BUILD_TYPE := UNOFFICIAL

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi
PROCESSOR_MODEL := SM6150

MISTOS_MAINTAINER="Tillua467"


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := phoenix

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="phoenix-user 11 RKQ1.200826.002 21.9.28 release-keys" \
    BuildFingerprint=Redmi/phoenix/phoenix:11/RKQ1.200826.002/21.9.28:user/release-keys
