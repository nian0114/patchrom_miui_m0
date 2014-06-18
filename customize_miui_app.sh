#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
ar=../int/ar/Arabic/main
br=../int/br/Brazilian-Portuguese/main
cz=../int/cz/Czech/main
da=../int/da/Danish/main
du=../int/du/Dutch/main
en=../int/en/English/main
fr=../int/fr/French/main
ge=../int/ge/German/main
ho=../int/ho/Dutch/main
hu=../int/hu/Hungarian/main
in=../int/in/Indonesian/main
it=../int/it/Italian/main
jp=../int/jp/Japanese/main
ju=../int/ju/Hebrew/main
ko=../int/ko/Korean/main
no=../int/no/Norwegian/main
po=../int/po/Portuguese/main
pl=../int/pl/Polish/main
ro=../int/ro/Romanian/main
ru=../int/ru/Russian/main
sl=../int/sl/Slovak/main
sp=../int/sp/Spanish/main
sw=../int/sw/Swedish/main
th=../int/th/Thai/main
tu=../int/tu/Turkish/main
ur=../int/ur/Ukrainian/main
vi=../int/vi/Vietnamese/main
GIT_APPLY=$PORT_ROOT/tools/git.apply

function addar() {
    for file in `find $ar -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addbr() {
    for file in `find $br -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addcz() {
    for file in `find $cz -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addda() {
    for file in `find $da -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function adddu() {
    for file in `find $du -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function adden() {
    for file in `find $en -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addfr() {
    for file in `find $fr -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addge() {
    for file in `find $ge -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addho() {
    for file in `find $ho -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addhu() {
    for file in `find $hu -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addin() {
    for file in `find $in -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addit() {
    for file in `find $it -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addjp() {
    for file in `find $jp -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addju() {
    for file in `find $ju -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addko() {
    for file in `find $ko -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addno() {
    for file in `find $no -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addpo() {
    for file in `find $po -name $1`
    do
	cp -u -r $file/* out/$1
    done
}

function addpl() {
    for file in `find $pl -name $1`
    do
	cp -u -r $file/* out/$1
    done
}

function addro() {
    for file in `find $ro -name $1`
    do
	cp -u -r $file/* out/$1
    done
}

function addru() {
    for file in `find $ru -name $1`
    do
	cp -u -r $file/* out/$1
    done
}

function addsl() {
    for file in `find $sl -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addsp() {
    for file in `find $sp -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addsw() {
    for file in `find $sw -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addth() {
    for file in `find $th -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addtu() {
    for file in `find $tu -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addur() {
    for file in `find $ur -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}

function addvi() {
    for file in `find $vi -name $1.apk`
    do
	cp -u -r $file/* out/$1
    done
}


function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

echo "original dir: $2"
echo "target dir:$1"


if [ $1 = "AntiSpam" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Backup" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Browser" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "BugReport" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Calculator" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Calendar" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "CalendarProvider" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "CloudService" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Contacts" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "ContactsProvider" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "DeskClock" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "DownloadProvider" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "DownloadProviderUi" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Email" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi


if [ $1 = "FileExplorer" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "MiuiCompass" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "MiuiGallery" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "MiuiHome" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
   cp $1/*.part out/
   cp $1/*.patch out/
   cd out
   $GIT_APPLY MiuiHome.part
   cd ..
   for file in `find $2 -name *.rej`
   do
 echo "Fatal error: MiuiHome patch fail"
       exit 1
   done
    $XMLMERGYTOOL $1/res/values $2/res/values
   cp -arf $1/res/values/plurals.xml  out/$1/res/values/plurals.xml
fi

if [ $1 = "MiuiSystemUI" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
    $XMLMERGYTOOL $1/res/values $2/res/values
    $XMLMERGYTOOL $1/res/values-xhdpi $2/res/values-xhdpi
    appendPart $1
fi

if [ $1 = "MiuiVideo" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "MiWallpaper" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Mms" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Music" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "NetworkAssistant2" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Notes" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "PackageInstaller" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "PaymentService" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Phone" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
	appendPart $1
fi

if [ $1 = "Provision" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "QuickSearchBox" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
    cp $1/*.part out/
    cd out
    $GIT_APPLY QuickSearchBox.part
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "Fatal error: QuickSearchBox patch fail"
        exit 1
    done
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
    cp $1/header.patch out/
    cd out
    $GIT_APPLY header.patch
    cd ..
    for file in `find $2 -name *.rej`
    do
	echo "header patch fail"
        exit 1
    done
fi

if [ $1 = "SoundRecorder" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "TelephonyProvider" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "ThemeManager" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Transfer" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Updater" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "VpnDialogs" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "Weather" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "WeatherProvider" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "XiaomiServiceFramework" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi

if [ $1 = "YellowPage" ];then
	addar $1
	addbr $1
	addcz $1
	addda $1
	adddu $1
	adden $1
	addfr $1
	addge $1
	addho $1
	addhu $1
	addin $1
	addit $1
	addjp $1
	addju $1
	addko $1
	addno $1
	addpo $1
	addpl $1
	addro $1
	addru $1
	addsp $1
	addsl $1
	addsw $1
	addth $1
	addtu $1
	addur $1
	addvi $1
fi


