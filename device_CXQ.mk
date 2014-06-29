$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/iNew/CXQ/CXQ-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/iNew/CXQ/overlay

LOCAL_PATH := device/iNew/CXQ
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/iNew/CXQ/recovery/factory_init.project.rc:recovery/root/factory_init.project.rc \
    device/iNew/CXQ/recovery/factory_init.rc:recovery/root/factory_init.rc \
    device/iNew/CXQ/recovery/fstab:recovery/root/fstab \
    device/iNew/CXQ/recovery/meta_init.modem.rc:recovery/root/meta_init.modem.rc \
    device/iNew/CXQ/recovery/meta_init.project.rc:recovery/root/meta_init.project.rc \
    device/iNew/CXQ/recovery/meta_init.rc:recovery/root/meta_init.rc \
    device/iNew/CXQ/recovery/ueventd.rc:recovery/root/ueventd.rc 

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_CXQ
PRODUCT_DEVICE := CXQ
