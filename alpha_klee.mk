#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Inherit from klee device
$(call inherit-product, device/xiaomi/klee/device.mk)

# Lineage build flags
PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false

# Device config
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build config
# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

TARGET_INCLUDE_GOOGLE_COMMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := false
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Debugging
TARGET_INCLUDE_MATLOG := true
WITH_ADB_INSECURE := false

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true
TARGET_PREBUILT_BCR := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := Javi

# Device manufacturer
PRODUCT_DEVICE := klee
PRODUCT_NAME := alpha_klee
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2511FPC34G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BRAND_FOR_ATTESTATION := $(PRODUCT_BRAND)
PRODUCT_DEVICE_FOR_ATTESTATION := $(PRODUCT_DEVICE)
PRODUCT_MODEL_FOR_ATTESTATION := $(PRODUCT_MODEL)
PRODUCT_NAME_FOR_ATTESTATION := klee_global
PRODUCT_MANUFACTURER_FOR_ATTESTATION := $(PRODUCT_MANUFACTURER)
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 16OS3.1.260629.234508394.MTPEGL.S release-keys" \
    BuildFingerprint=POCO/klee_global/klee:16/BP2A.250605.031.A3/OS3.0.306.0.WPJMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    SystemDevice=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME)
