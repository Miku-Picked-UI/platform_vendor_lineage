# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# Warn about LineageOS 23.2 kernel options that the Miku kernel build
# (vendor/miku/build/tasks/kernel.mk) does not implement.

ifneq ($(filter lineage_%,$(TARGET_PRODUCT)),)
_lineage_unsupported_kernel_vars := \
    TARGET_KERNEL_RUST_VERSION \
    TARGET_KERNEL_PLATFORM_TARGET \
    TARGET_KERNEL_LIBC_SYSROOT_USE
$(foreach v,$(_lineage_unsupported_kernel_vars), \
  $(if $(strip $($(v))), \
    $(warning Miku-Picked UI: $(v) is a LineageOS 23.2 kernel option that is not supported and is ignored. Use a prebuilt kernel or the classic TARGET_KERNEL_SOURCE/TARGET_KERNEL_CONFIG flow.)))
_lineage_unsupported_kernel_vars :=
endif
