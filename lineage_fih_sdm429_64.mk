#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from fih_sdm429_64 device
$(call inherit-product, device/qualcomm/fih_sdm429_64/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := fih_sdm429_64
PRODUCT_NAME := lineage_fih_sdm429_64
PRODUCT_BRAND := Android
PRODUCT_MODEL := FIH-EAG
PRODUCT_MANUFACTURER := qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-qualcomm

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Eagles_01N0-user 9 PPR1.180610.011 01N0_1_39L release-keys" \
    BuildFingerprint=Nokia/Eagles_01N0/EAG:9/PPR1.180610.011/01N0_1_39L:user/release-keys
