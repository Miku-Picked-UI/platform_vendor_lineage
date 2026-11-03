# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS 23.2 device-tree compatibility layer for Miku-Picked UI.
# LineageOS device trees ship HALs from hardware/lineage/interfaces
# (vendor.lineage.health, livedisplay, powershare, touch, ...). LineageOS
# declares them in a product framework compatibility matrix from
# vendor/lineage/config/common.mk; without it the build-time VINTF check
# rejects a device manifest that lists those HALs.

PRODUCT_PACKAGES += \
    framework_compatibility_matrix.lineage.xml
