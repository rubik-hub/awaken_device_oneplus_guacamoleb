#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common AwakenOS stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := awaken_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7
PRODUCT_SYSTEM_DEVICE := OnePlus7

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# AwakenOS
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7/OnePlus7:10/QKQ1.190716.003/2003131900:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7 \
    TARGET_PRODUCT=OnePlus7 \
    PRIVATE_BUILD_DESC="OnePlus7-user 10 QKQ1.190716.003 2003131900 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
