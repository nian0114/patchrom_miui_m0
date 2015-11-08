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
sed -i 's/MiuiIccProvider/IccProvider/g' out/TeleService/smali/com/android/phone/IccProvider.smali
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

if [ $1 = "XiaomiServiceFramework" ];then
    applyPatch $1 $2
fi
