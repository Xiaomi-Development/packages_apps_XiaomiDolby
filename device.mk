#
# Copyright (C) 2023-2024 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SOONG_NAMESPACES += \
    packages/apps/XiaomiDolby

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
	$(LOCAL_PATH)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
	$(LOCAL_PATH)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# XiaomiDolby
PRODUCT_PACKAGES += \
    XiaomiDolby \
    libdapparamstorage \
    vendor.dolby.hardware.dms@2.0 \
    libdeccfg \
    libstagefright_soft_ac4dec \
    libstagefright_soft_ddpdec \
    libswdap \
    libswgamedap \
    libswvqe \
    libdlbdsservice \
    vendor.dolby.hardware.dms@2.0-impl \
    manifest_vendor.dolby.hardware.dms.xml \
    vendor.dolby.hardware.dms@2.0-service

# XiaomiDolby sepolicy
BOARD_SEPOLICY_DIRS += packages/apps/XiaomiDolby/sepolicy
