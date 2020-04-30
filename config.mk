#
# Copyright (C) 2020 The PixelExperience Project
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

ifeq ($(TARGET_INCLUDE_WIFI_EXT),true)
$(call inherit-product, vendor/google-customization/interfaces/wifi_ext/wifi-ext.mk)
endif

ifeq ($(TARGET_FLATTEN_APEX),false)
$(call inherit-product, vendor/google-customization/apex/apex.mk)

# Apex Namespace
PRODUCT_SOONG_NAMESPACES += vendor/google-customization/apex/apex_images

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/google-customization/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/google-customization/overlay
endif

$(call inherit-product, vendor/google-customization/product/config.mk)
