# SPDX-FileCopyrightText: 2026 Miku-Picked UI
# SPDX-License-Identifier: Apache-2.0
#
# LineageOS-style helpers for lineage_<device> trees.
#   breakfast <device> [variant]   -> lunch lineage_<device>-bp4a-<variant>
#   brunch <device> [variant]      -> breakfast + m diva

function breakfast()
{
    if [ -z "$1" ]; then
        echo "usage: breakfast <device> [user|userdebug|eng]" >&2
        return 1
    fi
    lunch "lineage_$1-bp4a-${2:-userdebug}"
}

function brunch()
{
    breakfast "$@" && m diva
}
