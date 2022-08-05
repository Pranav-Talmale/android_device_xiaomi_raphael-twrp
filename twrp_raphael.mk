#
# Copyright 2022 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := raphael
DEVICE_PATH := device/xiaomi/raphael

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Setup FBEv1 and FBEv2 Configurations
ifeq ($(FOX_VARIANT),FBEv2)
$(call inherit-product, device/xiaomi/raphael/FBEv2.mk)
else
$(call inherit-product, device/xiaomi/raphael/FBEv1.mk)
endif

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := raphael
PRODUCT_NAME := twrp_raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T Pro
PRODUCT_MANUFACTURER := Xiaomi
