# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS 23.2 device-tree compatibility layer for Miku-Picked UI.
# Device trees written for LineageOS inherit vendor/lineage/config/*;
# in Miku-Picked UI the real product configuration lives in vendor/miku.

# Some LineageOS device trees put $(LINEAGE_VERSION) in the kernel
# command line (e.g. mtdoops/swinfo fingerprints). Keep it meaningful.
LINEAGE_VERSION = MikuPickedUI-$(PLATFORM_MIKU_VERSION)-$(TARGET_DEVICE)
LINEAGE_COMPAT_LAYER := true
