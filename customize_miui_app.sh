#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
be=../int/be/Belarusian/main
br=../int/br/Brazilian-Portuguese/main
bu=../int/bu/Bulgarian/main
cr=../int/cr/Croatian/main
cz=../int/cz/Czech/main
fr=../int/fr/French/main
ge=../int/ge/Main
gr=../int/gr/Greek/main
it=../int/it/Italian/main
mk=../int/mk/Macedonian/main
no=../int/no/Norwegian/main
po=../int/po/Portuguese/main
pl=../int/pl/polish/main
ro=../int/ro/Romanian/main
ru=../int/ru/Russian/main
se=../int/se/Serbian/main
sl=../int/sl/Slovak/main
sw=../int/sw/Swedish/main
tu=../int/tu/Turkish/main
uk=../int/uk/Ukrainian/main
curdir=`pwd`

echo "target dir:$1"
echo "original dir: $2"

function applyPatch () {
    for patch in `find $1 -name *.patch`
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

function add() {
    for file in `find $be -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $br -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $bu -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $cr -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $cz -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $fr -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $ge -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $gr -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $it -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $mk -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $no -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $po -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $pl -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $ro -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $ru -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $se -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $sl -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $sw -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $tu -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
    for file in `find $uk -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

if [ $1 = "AntiSpam" ];then
	add $1
fi

if [ $1 = "ApplicationsProvider" ];then
	add $1
fi

if [ $1 = "AuthManager" ];then
	add $1
fi

if [ $1 = "Backup" ];then
	add $1
fi

if [ $1 = "BarcodeScanner" ];then
	add $1
fi

if [ $1 = "Browser" ];then
	add $1
fi

if [ $1 = "BugReport" ];then
	add $1
fi

if [ $1 = "Calculator" ];then
	add $1
fi

if [ $1 = "Calendar" ];then
	add $1
fi

if [ $1 = "CalendarProvider" ];then
	add $1
fi

if [ $1 = "CloudAppBackup" ];then
	add $1
fi

if [ $1 = "CloudService" ];then
	add $1
fi

if [ $1 = "Contacts" ];then
	add $1
fi

if [ $1 = "ContactsProvider" ];then
	add $1
fi

if [ $1 = "DocumentsUI" ];then
	add $1
fi

if [ $1 = "DownloadProvider" ];then
	add $1
fi

if [ $1 = "DownloadProviderUi" ];then
	add $1
fi

if [ $1 = "Email" ];then
	add $1
fi

if [ $1 = "FileExplorer" ];then
	add $1
fi

if [ $1 = "GuardProvider" ];then
	add $1
fi

if [ $1 = "InCallUI" ];then
	add $1
fi

if [ $1 = "LiveWallpapersPicker" ];then
	add $1
fi

if [ $1 = "MediaProvider" ];then
	add $1
fi

if [ $1 = "MiAssistant" ];then
	add $1
fi

if [ $1 = "MiLinkService" ];then
	add $1
fi

if [ $1 = "MiuiCompass" ];then
	add $1
fi

if [ $1 = "MiuiGallery" ];then
	add $1
fi

if [ $1 = "MiuiHome" ];then
	add $1
fi

if [ $1 = "MiuiKeyguard" ];then
	add $1
fi

if [ $1 = "MiuiSystemUI" ];then
	add $1
fi

if [ $1 = "MiuiVideo" ];then
	add $1
fi

if [ $1 = "MiWallpaper" ];then
	add $1
fi

if [ $1 = "Mms" ];then
	add $1
fi

if [ $1 = "Music" ];then
	add $1
fi

if [ $1 = "NetworkAssistant2" ];then
	add $1
fi

if [ $1 = "Notes" ];then
	add $1
fi

if [ $1 = "PackageInstaller" ];then
	add $1
fi

if [ $1 = "PaymentService" ];then
	add $1
fi

if [ $1 = "Provision" ];then
	add $1
fi

if [ $1 = "QuickSearchBox" ];then
	add $1
fi

if [ $1 = "SettingsProvider" ];then
	add $1
fi

if [ $1 = "SoundRecorder" ];then
	add $1
fi

if [ $1 = "TelephonyProvider" ];then
	add $1
fi

if [ $1 = "ThemeManager" ];then
	add $1
fi

if [ $1 = "Weather" ];then
	add $1
fi

if [ $1 = "WeatherProvider" ];then
	add $1
fi

if [ $1 = "XiaomiAccount" ];then
	add $1
fi

if [ $1 = "XiaomiServiceFramework" ];then
	add $1
fi

if [ $1 = "YellowPage" ];then
	add $1
fi

if [ $1 = "MiuiFramework" ];then
	add $1
	applyPatch $1 $2
    cp $1/m0.xml $2/assets/device_features/
fi

if [ $1 = "TeleService" ];then
	add $1
	applyPatch $1 $2
fi

if [ $1 = "SecurityCenter" ];then
	add $1
	applyPatch $1 $2
fi

if [ $1 = "DeskClock" ];then
	add $1
	applyPatch $1 $2
fi

if [ $1 = "Updater" ];then
	add $1
	applyPatch $1 $2
fi

if [ $1 = "Settings" ];then
	add $1
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
	applyPatch $1 $2
fi
