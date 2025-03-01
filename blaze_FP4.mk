#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from FP4 device
$(call inherit-product, device/fairphone/FP4/device.mk)

# Inherit some common Project-Blaze stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_FP4
PRODUCT_DEVICE := FP4
PRODUCT_BRAND := Fairphone
PRODUCT_MODEL := FP4
PRODUCT_MANUFACTURER := Fairphone

PRODUCT_SYSTEM_NAME := FP4eea

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Fairphone/FP4eea/FP4:13/TKQ1.230127.002/TP2I:user/release-keys
