#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7217152 d2ddfcb36fd6c93d37fd24430d49bf8732b7053a 4982784 64ed58f2530fd6a3a55f65155858199b1215e6d5
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:7217152:d2ddfcb36fd6c93d37fd24430d49bf8732b7053a; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4982784:64ed58f2530fd6a3a55f65155858199b1215e6d5 EMMC:/dev/block/mmcblk0p6 d2ddfcb36fd6c93d37fd24430d49bf8732b7053a 7217152 64ed58f2530fd6a3a55f65155858199b1215e6d5:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
