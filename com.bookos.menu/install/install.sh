#!/bin/sh
# Installs the BookOS Menu serial helper + polkit policy system-wide.
# Run with sudo. Safe to re-run. Bundle this in the ISO build.
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"

install -Dm755 "$HERE/bin/bookos-serial" /usr/libexec/bookos-serial
install -Dm644 "$HERE/polkit/com.bookos.menu.serial.policy" \
    /usr/share/polkit-1/actions/com.bookos.menu.serial.policy

echo "Installed:"
echo "  /usr/libexec/bookos-serial"
echo "  /usr/share/polkit-1/actions/com.bookos.menu.serial.policy"
