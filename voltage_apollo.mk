#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common VoltageOS stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

PRODUCT_NAME := voltage_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T Pro
VOLTAGE_BUILD_TYPE := CUSTOM

PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/voltage-priv/keys/releasekey
PRODUCT_EXTRA_RECOVERY_KEYS += vendor/voltage-priv/keys/releasekey

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_COPY_FILES += \
    device/xiaomi/apollo/configs/permissions/default-permissions-aa.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default-permissions/default-permissions-aa.xml

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="apollo_global-user 12 RKQ1.211001.001 V14.0.4.0.SJDMIXM release-keys" \
    BuildFingerprint=google/husky_beta/husky:16/BP41.250822.010/14082742:user/release-keys
