# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy J5

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Include full languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="j5nltexx-user 10 MMB29M J500FXXU1BSK2 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/flame/flame:10/QQ2A.200405.005/6254899:user/release-keys

BUILD_FINGERPRINT := google/flame/flame:10/QQ2A.200405.005/6254899:user/release-keys

# Gapps
IS_PHONE := true
TARGET_MINIMAL_APPS := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_GAPPS_ARCH := arm
TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK := true

# wifi-ext removal
$(call inherit-product, $(LOCAL_PATH)/configs/wifi/wifi_ext.mk)
