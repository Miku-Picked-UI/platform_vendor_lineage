# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS 23.2 device-tree compatibility layer for Miku-Picked UI.
# Device trees written for LineageOS inherit vendor/lineage/config/*;
# in Miku-Picked UI the real product configuration lives in vendor/miku.

$(call inherit-product, $(SRC_TARGET_DIR)/product/large_screen_common.mk)

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml
