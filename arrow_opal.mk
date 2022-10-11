#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from opal device makefile
$(call inherit-product, device/xiaomi/opal/device.mk)

# Inherit some source stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := opal
PRODUCT_NAME := arrow_opal
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11S 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=opal \
    PRODUCT_NAME=opal \
    PRIVATE_BUILD_DESC="opal-user 11 RP1A.200720.011 V13.0.6.0.RGLMIXM release-keys"

BUILD_FINGERPRINT := Redmi/opal_global/opal:11/RP1A.200720.011/V13.0.6.0.RGLMIXM:user/release-keys
