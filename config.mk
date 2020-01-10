ifeq ($(TARGET_INCLUDE_WIFI_EXT),true)
$(call inherit-product, vendor/google/customization/interfaces/wifi_ext/wifi-ext.mk)
endif

ifeq ($(TARGET_FLATTEN_APEX),false)
$(call inherit-product, vendor/google/customization/apex/apex.mk)

# Apex Namespace
PRODUCT_SOONG_NAMESPACES += vendor/google/customization/apex/apex_images

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/google/customization/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/google/customization/overlay
endif