#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common RisingOS stuff
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit Extra flags
TARGET_ENABLE_BLUR := true
TARGET_ENABLE_PIXEL_FEATURES := true
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit RisingOS flags
RISING_MAINTAINER := Muffyn
RISING_CHIPSET := SDM732G
RISING_BATTERY := 5020mah
RISING_STORAGE := 256gb
RISING_RAM := 6/8gb

# Inherit GMS flags
WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rising_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
