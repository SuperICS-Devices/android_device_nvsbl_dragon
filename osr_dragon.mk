#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/nvsbl/dragon/full_dragon.mk)
$(call inherit-product, vendor/osr/products/high_tablet_device.mk)
$(call inherit-product, vendor/osr/products/base_telephony.mk)
$(call inherit-product, device/nvsbl/dragon/dragon-blobs.mk)
$(call inherit-product, vendor/osr/products/asian.mk)
$(call inherit-product, vendor/osr/products/mdpi.mk)
$(call inherit-product, vendor/osr/products/facelock.mk)

-include vendor/osr/products/minimal_gapps.mk
-include vendor/osr/products/flashplayer.mk
-include vendor/osr/products/themes_common.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := osr_dragon
PRODUCT_BRAND := NVSBL
PRODUCT_DEVICE := dragon
PRODUCT_MODEL := NVSBL Dragon
PRODUCT_MANUFACTURER := NVSBL
PRODUCT_RELEASE_NAME := dragon
PRODUCT_VERSION_MAINTENANCE := 0

PRODUCT_LOCALES := es_ES ca_ES zh_CN ja_JP ko_KR ru_RU en_US en_GB fr_FR it_IT de_DE mdpi

VENDOR_COPY_USER_DATA := true
VENDOR_WIPE_USER_DATA := false

DEVICE_PACKAGE_OVERLAYS += vendor/osr/overlay/mdpi

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Sun4i BUILD_FINGERPRINT="iNet/crane_evb/crane-evb:4.0.4/IMM76I/20120330:eng/test-keys" PRIVATE_BUILD_DESC="crane_evb-eng 4.0.4 IMM76I 20120330 test-keys"
