# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# Private signing keys, as in LineageOS (config/common.mk): a
# vendor/lineage-priv/keys made from https://github.com/LineageOS/lineage-priv-template
# signs the build with those keys at build time. Without it the build uses the AOSP test keys.

-include vendor/lineage-priv/keys/keys.mk
