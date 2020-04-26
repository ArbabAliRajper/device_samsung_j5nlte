LOCAL_PATH := device/samsung/j5nlte

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_j5nlte.mk

COMMON_LUNCH_CHOICES := \
    aosp_j5nlte-eng \
    aosp_j5nlte-userdebug \
    aosp_j5nlte-user
