# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS 23.2 device-tree compatibility layer for Miku-Picked UI.
# Device trees written for LineageOS inherit vendor/lineage/config/*;
# in Miku-Picked UI the real product configuration lives in vendor/miku.
#
# Intentionally empty: for lineage_<device> products the build system
# already includes vendor/miku/config/BoardConfigMiku.mk, which provides the
# kernel, Qualcomm and Soong configuration. Including it twice would
# register Soong config variables twice.
