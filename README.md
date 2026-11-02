# vendor/lineage — Miku-Picked UI compatibility layer

This lets **unmodified LineageOS 23.2 device trees** build Miku-Picked UI.

| Lineage device tree uses | What it does here |
|---|---|
| `vendor/lineage/config/common_full_phone.mk` (and the other `common_*`) | inherits `vendor/miku/build/product/miku_product.mk` (phones) or `miku_product_tab.mk` (tablets) |
| `vendor/lineage/config/BoardConfigReservedSize.mk` | kept from LineageOS 23.2 unchanged |
| `lineage.dependencies` | read by `vendor/miku/build/tools/roomservice.py` |
| `lunch lineage_<device>-bp4a-userdebug` | sets `MIKU_BUILD`, so Miku's board config and sepolicy apply |
| `m bacon` / `breakfast` / `brunch` | aliases for Miku's `m diva` flow |
| `$(LINEAGE_VERSION)` | `MikuPickedUI-<version>-<device>` |

Android TV and Automotive products are not supported. The LineageOS 23.2 kernel
options `TARGET_KERNEL_RUST_VERSION`, `TARGET_KERNEL_PLATFORM_TARGET` and
`TARGET_KERNEL_LIBC_SYSROOT_USE` are ignored with a warning.

Based on https://github.com/LineageOS/android_vendor_lineage (lineage-23.2), Apache-2.0.
