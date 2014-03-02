# Release name
PRODUCT_RELEASE_NAME := GN-CDMA

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

$(call inherit-product, vendor/plain/config/cdma.mk)
$(call inherit-product, vendor/plain/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/toro/aosp_toro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := toro
PRODUCT_NAME := plain_toro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mysid \
	BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/573038:user/release-keys" \
	PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 573038 release-keys"
