#!/sbin/sh
#
# TODO: this kludge is needed to prevent issues with mounting
# system and vendor in some zip installers and in the gui
#
sleep 1
mount -w /product > /dev/null 2>&1
mount -w /vendor > /dev/null 2>&1
mount -w /system_root > /dev/null 2>&1
mount -w /system_ext > /dev/null 2>&1

sleep 1
umount /product > /dev/null 2>&1
umount /vendor > /dev/null 2>&1
umount /system_root > /dev/null 2>&1
umount /system_ext > /dev/null 2>&1

# deal with FOX_CUSTOM_BINS_TO_SDCARD
[ -f /sbin/from_fox_sd.sh ] && source /sbin/from_fox_sd.sh

# exit cleanly
exit 0
#
