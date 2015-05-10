#!/bin/bash

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

cd $PORT_ROOT/$PORT_PRODUCT/out

mv framework-ext-res framework-ext-res2
$PORT_ROOT/tools/apktool --quiet d -f framework-ext-res.apk
mv -f framework-ext-res2/* framework-ext-res
rm -rf framework-ext-res2
rm -f framework-ext-res.apk

cp -u -r $be/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $br/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $bu/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $cr/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $cz/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $fr/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $ge/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $gr/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $it/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $mk/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $no/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $pl/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $po/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $ro/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $ru/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $se/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $sl/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $sw/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $tu/framework-ext-res.apk/res/* framework-ext-res/res
cp -u -r $uk/framework-ext-res.apk/res/* framework-ext-res/res

$PORT_ROOT/tools/apktool --quiet b framework-ext-res framework-ext-res.apk


