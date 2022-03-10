#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from begonia device makefile
$(call inherit-product, device/xiaomi/begonia/device.mk)

# Inherit from begonia interfaces makefile
$(call inherit-product, device/xiaomi/begonia/mtk-interfaces.mk)

# Inherit some Evolution source stuff
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := begonia
PRODUCT_NAME := evolution_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := Xiaomi
