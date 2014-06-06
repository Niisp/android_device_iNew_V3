## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := CXQ

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/iNew/CXQ/device_CXQ.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CXQ
PRODUCT_NAME := cm_CXQ
PRODUCT_BRAND := iNew
PRODUCT_MODEL := CXQ
PRODUCT_MANUFACTURER := iNew
