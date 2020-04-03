# Inherit from vendor
$(call inherit-product, vendor/samsung/j5x-common/j5x-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay_j5x

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth_j5x
