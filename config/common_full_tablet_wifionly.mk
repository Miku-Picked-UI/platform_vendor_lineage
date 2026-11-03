# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS 23.2 device-tree compatibility layer for Miku-Picked UI.
# Device trees written for LineageOS inherit vendor/lineage/config/*;
# in Miku-Picked UI the real product configuration lives in vendor/miku.

$(call inherit-product, vendor/lineage/config/version.mk)
$(call inherit-product, vendor/lineage/config/lineage_interfaces.mk)
$(call inherit-product, vendor/miku/build/product/miku_product_tab.mk)
$(call inherit-product, vendor/lineage/config/wifionly.mk)
