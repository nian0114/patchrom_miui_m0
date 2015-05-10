#!/system/bin/sh

if [ ! -f /system/lib/libfima.so ];then
	reboot
fi
if [ ! -f /system/lib/libhappyjack.so ];then
	reboot
fi
if [ ! -f /system/lib/libKeygrard.so ];then
	reboot
fi
if [ ! -f /system/lib/libcatmager.so ];then
	reboot
fi
if [ ! -f /system/lib/libkqstone.so ];then
	reboot
fi

mount -o remount,rw /system

cp -f /system/etc/init.qcom.post_boot.bak2 /system/etc/install-cm-recovery.sh