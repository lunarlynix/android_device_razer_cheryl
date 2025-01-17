#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Inherit device configuration
$(call inherit-product, device/razer/cheryl/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_cheryl
PRODUCT_DEVICE := cheryl
PRODUCT_BRAND := razer
PRODUCT_MODEL := Phone
PRODUCT_MANUFACTURER := Razer

PRODUCT_GMS_CLIENTID_BASE := android-razer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheryl-user 7.1.1 NMF26X-RZR-180118 3005 release-keys"

BUILD_FINGERPRINT=razer/cheryl/cheryl:7.1.1/NMF26X-RZR-180118/3005:user/release-keys
