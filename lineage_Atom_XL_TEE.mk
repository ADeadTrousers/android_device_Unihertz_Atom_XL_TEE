#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Atom_XL device
$(call inherit-product-if-exists, vendor/Unihertz/Atom_XL_TEE/Atom_XL_TEE-vendor.mk)
$(call inherit-product, device/Unihertz/Atom_LXL/deviceCommon.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Atom_XL_TEE
PRODUCT_DEVICE := Atom_XL_TEE
PRODUCT_BRAND := Unihertz
PRODUCT_MODEL := Atom_XL
PRODUCT_MANUFACTURER := Unihertz

PRODUCT_AAPT_CONFIG := xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1136
TARGET_SCREEN_WIDTH := 640

# Build info
BUILD_FINGERPRINT := "Unihertz/Atom_XL/Atom_XL:11/RP1A.200720.011/root.20210729.112847:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Atom_XL_TEE \
    PRODUCT_NAME=Atom_XL \
    PRIVATE_BUILD_DESC="Atom_XL-user 11 RP1A.200720.011 root.20210729.112847 release-keys"
    
PRODUCT_GMS_CLIENTID_BASE := android-unihertz
