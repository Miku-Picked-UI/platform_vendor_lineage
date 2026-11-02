# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS 23.2 device-tree compatibility layer for Miku-Picked UI.
# Device trees written for LineageOS inherit vendor/lineage/config/*;
# in Miku-Picked UI the real product configuration lives in vendor/miku.
#
# Telephony bits. vendor/miku/build/product/miku_product.mk already ships
# apns-conf.xml, messaging and Stk; only Lineage defaults are added here.

PRODUCT_PRODUCT_PROPERTIES += \
    net.tethering.noprovisioning=true
