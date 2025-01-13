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

# Inherit some common infinty-x stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
INFINITY_MAINTAINER := Tillua467
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
USE_MOTO_CALCULATOR := false
TARGET_BUILD_VIMUSIC := false

# Custom stuff.
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_FINGERPRINT_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := infinity_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
BOARD_VENDOR := Xiaomi


TARGET_VENDOR_PRODUCT_NAME := phoenix
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="phoenix-user 11 RKQ1.200826.002 21.9.28 release-keys" \
    BuildFingerprint=Redmi/phoenix/phoenix:11/RKQ1.200826.002/21.9.28:user/release-keys
