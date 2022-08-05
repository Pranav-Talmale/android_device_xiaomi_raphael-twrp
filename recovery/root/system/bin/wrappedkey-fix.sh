#!/system/bin/sh
#
#  This file is part of the OrangeFox Recovery Project
#   Copyright (C) 2022 The OrangeFox Recovery Project
#
#  OrangeFox is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  any later version.
#
#  OrangeFox is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#   This software is released under GPL version 3 or any later version.
#  See <http://www.gnu.org/licenses/>.
#
#   Please maintain this if you use this script or any part of it
#
# Author : DarthJabba9
# Edited and adapted for raphael by : Pranav-Talmale
#
fix_unwrap_decryption() {
local D=/tmp/system_prop;
local S=/dev/block/bootdevice/by-name/system;
local F=/tmp/build.prop;
local LOGF=/tmp/recovery.log;
    cd /tmp;
    mkdir -p $D;
    mount $S $D;
    cp $D/system/build.prop $F;
    umount $D;
    [ ! -e $F ] && { 
    	echo "$F does not exist. Quitting." >> $LOGF;
    	return;
    }

    local found=0;
    if [ -n "$(grep ro.potato $F)" ]; then
    	found=1;
    elif [ -n "$(grep org.pixelplusui $F)" ]; then
    	found=1;
    elif [ -n "$(grep org.evolution $F)" ]; then
    	found=1;
    elif [ -n "$(grep -i PixysOS $F)" ]; then
    	found=1;
    elif [ -n "$(grep -i Streak $F)" ]; then
    	found=1;
    fi
    if [ "$found" = "1" ]; then
       echo "This is a no-wrappedkey ROM. Replacing the default fstab."; >> $LOGF;
       rm -rf /system/etc/recovery.fstab;
	   mv /system/etc/evox.fstab /system/etc/recovery.fstab;
    else
       echo "This is not a no-wrappedkey ROM. Continuing with the default fstab"; >> $LOGF;
    fi
}

fix_unwrap_decryption;
exit 0;