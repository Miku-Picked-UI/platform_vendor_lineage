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
| HALs from `hardware/lineage/interfaces` | `framework_compatibility_matrix.lineage.xml` is installed (`config/lineage_interfaces.mk`), as LineageOS does |
| `org.lineageos.platform.internal` (static lib of device apps) | `sdk/`: the lineage-sdk helper classes device apps use (`FileUtils`, `ScreenType`); lineage-sdk itself is not shipped |

Features that need lineage-sdk at runtime (LiveDisplay, Lineage charging
control, touch gestures settings, PowerShare tile) have no settings UI; their
HALs still run. Android TV and Automotive products are not supported. The LineageOS 23.2 kernel
options `TARGET_KERNEL_RUST_VERSION`, `TARGET_KERNEL_PLATFORM_TARGET` and
`TARGET_KERNEL_LIBC_SYSROOT_USE` are ignored with a warning.

Based on https://github.com/LineageOS/android_vendor_lineage (lineage-23.2), Apache-2.0.
