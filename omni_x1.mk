# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from nx510j device
$(call inherit-product, device/leeco/x1/device.mk)

# Inherit some common OMNI stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_NAME := omni_x1
PRODUCT_DEVICE := x1
PRODUCT_MANUFACTURER := leeco
PRODUCT_MODEL := X1

PRODUCT_GMS_CLIENTID_BASE := android-letv

PRODUCT_BRAND := leeco
TARGET_VENDOR := leeco
TARGET_VENDOR_PRODUCT_NAME := X1
TARGET_VENDOR_DEVICE_NAME := X1

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=X1 PRODUCT_NAME=X1
# Kernel inline build
#TARGET_KERNEL_CONFIG := x1_defconfig
#TARGET_VARIANT_CONFIG := x1_defconfig
#TARGET_SELINUX_CONFIG := x1_defconfig

## Use the latest approved GMS identifiers
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=leeco/Le1Pro_US/x1:8.1.2/OHM4UKRL081818125S/404:user/release-keys \
    PRIVATE_BUILD_DESC="x1-user 8.1.2 OHM4UKRL081818125S 404 release-keys"
endif
