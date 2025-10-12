#!/sbin/sh
MODDIR=${0%/*}
MODULES=$(dirname "$MODDIR")

uninstall() {
  chmod 700 "$MODDIR"/bin/uninstall
  "$MODDIR"/bin/uninstall "$MODDIR"
  rm -rf "/data/adb/sui"
}

uninstall
