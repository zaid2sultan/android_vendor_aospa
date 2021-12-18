#
# Copyright (C) 2019 The CAFEX Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (atomx_lavender,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/atomx/target/product/atomx-target.mk)

# Bootanimation.
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)
$(call inherit-product, device/xiaomi/lavender/device-hidl.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := atomx_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 V11.0.5.0.PFGMIXM release-keys"

#BUILD_FINGERPRINT :="google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

endif
