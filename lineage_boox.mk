#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from boox device
$(call inherit-product, device/onyx/boox/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_boox
PRODUCT_DEVICE := boox
PRODUCT_MANUFACTURER := ONYX
PRODUCT_BRAND := ONYX
PRODUCT_MODEL := BOOX

PRODUCT_GMS_CLIENTID_BASE := android-onyx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BOOX-user 11 RKQ1.210614.002 200 release-keys" \
    TARGET_DEVICE=BOOX \
    TARGET_PRODUCT=BOOX

BUILD_FINGERPRINT := ONYX/BOOX/BOOX:11/RKQ1.210614.002/200:user/release-keys
