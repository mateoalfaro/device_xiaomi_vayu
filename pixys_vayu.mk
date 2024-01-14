#
# Copyright (C) 2018-2021 Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common PixysOS stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

# PixysOS Properties
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true


PRODUCT_NAME := pixys_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 TKQ1.221013.002 V14.0.1.0.TJUMIXM release-keys" \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SG

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:13/TKQ1.221013.002/V14.0.1.0.TJUMIXM:user/release-keys
