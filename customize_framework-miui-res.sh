#!/bin/bash

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

cd $PORT_ROOT/$PORT_PRODUCT/out

mv framework-miui-res framework-miui-res2
$PORT_ROOT/tools/apktool --quiet d -f framework-miui-res.apk
mv -f framework-miui-res2/* framework-miui-res
rm -rf framework-miui-res2
rm -f framework-miui-res.apk

cp -u -r $ar/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $br/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $cz/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $da/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $du/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $en/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $fr/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ge/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ho/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $hu/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $in/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $it/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $jp/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ju/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ko/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $no/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $po/framework-miui-res/res/* framework-miui-res/res
cp -u -r $pl/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ro/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ru/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $sp/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $sl/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $sw/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $th/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $tu/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $ur/framework-miui-res.apk/res/* framework-miui-res/res
cp -u -r $vi/framework-miui-res.apk/res/* framework-miui-res/res

$PORT_ROOT/tools/apktool --quiet b framework-miui-res framework-miui-res.apk

