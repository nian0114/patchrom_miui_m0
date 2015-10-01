#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
curdir=`pwd`

echo "target dir:$1"
echo "original dir: $2"

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "MiuiSystemUI" ];then
    applyPatch $1 $2
    $XMLMERGYTOOL $1/res/values $2/res/values
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Music" ];then
    applyPatch $1 $2
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "miuisystem" ];then
    applyPatch $1 $2
    cp $1/m0.xml $2/assets/device_features/
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "TeleService" ];then
    applyPatch $1 $2
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "SecurityCenter" ];then
    sed -i 0,/0x5/s//0x1/ $2/smali/com/miui/permcenter/root/RootApplyActivity.smali
    sed -i 0,/0x5/s//0x1/ $2/smali/com/miui/permcenter/root/RootApplyActivity.smali
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "DeskClock" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Settings" ];then
    applyPatch $1 $2
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
    sed -i s/screen_buttons_timeout/button_backlight_timeout/g `grep screen_buttons_timeout -rl --include="*.smali" $2/smali/*`
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Updater" ];then
    applyPatch $1 $2
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "ThemeManager" ];then
    applyPatch $1 $2
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "DownloadProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "AntiSpam" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "ApplicationsProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "AuthManager" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Backup" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Browser" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "BugReport" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Calculator" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Calendar" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "CalendarProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "CloudService" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Contacts" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "ContactsProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "DocumentsUI" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "DownloadProviderUi" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Email" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "FileExplorer" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "GuardProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "InCallUI" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "LiveWallpapersPicker" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MediaProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiAssistant" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiuiCompass" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiuiGallery" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiuiHome" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiuiKeyguard" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiLinkService" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "MiWallpaper" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Mms" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "NetworkAssistant2" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Notes" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "PackageInstaller" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "PaymentService" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Provision" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "QuickSearchBox" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "SettingsProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "SoundRecorder" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "TelephonyProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Weather" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "WeatherProvider" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "XiaomiAccount" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "XiaomiServiceFramework" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "YellowPage" ];then
    ../tools/idtoname.py ../tools/public-miui.xml $2/smali
    ../tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi
