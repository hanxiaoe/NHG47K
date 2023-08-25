#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from NHG47K device
$(call inherit-product, device/rockchip/NHG47K/device.mk)

PRODUCT_DEVICE := NHG47K
PRODUCT_NAME := twrp_NHG47K
PRODUCT_BRAND := Android
PRODUCT_MODEL := rk3399-mid
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NHG47K-user 7.1.2 NHG47K user.xshuo.20190826.141914 release-keys"

BUILD_FINGERPRINT := Android/NHG47K/NHG47K:7.1.2/NHG47K/user.xshuo.20190826.141914:user/release-keys
