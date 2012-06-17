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
$(call inherit-product, vendor/osr/products/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/osr/products/base_telephony.mk)
$(call inherit-product, device/nvsbl/dragon/dragon-blobs.mk)

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

PRODUCT_LOCALES := es_ES en_US fr_FR it_IT de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN mdpi

VENDOR_COPY_USER_DATA := true
VENDOR_WIPE_USER_DATA := false

DEVICE_PACKAGE_OVERLAYS += vendor/osr/overlay/mdpi

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Dragon BUILD_FINGERPRINT="iNet/crane_evb/crane-evb:4.0.3/IML74K/20120330:eng/test-keys" PRIVATE_BUILD_DESC="crane_evb-eng 4.0.3 IML74K 20120330 test-keys"
