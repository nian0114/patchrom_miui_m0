#!/sbin/sh
# 
# /system/addon.d/90-motocamera.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
framework/com.motorola.gallery.jar
framework/com.motorola.motosignature.jar
lib/libjni_mot_makernotes.so
etc/permissions/com.motorola.camera.xml
etc/permissions/com.motorola.gallery.xml
etc/permissions/com.motorola.motosignature.xml
etc/permissions/features.xml
app/MotoSignatureApp.apk
priv-app/MotCamera.apk app/Camera2.apk
priv-app/MotGallery2.apk app/Gallery2.apk
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
