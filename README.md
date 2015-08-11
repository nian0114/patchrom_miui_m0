MIUI patchrom for Samsung S3 开源说明

1.开源的代码由nian基于I9300 CM11.0 Final版本 ROM适配MIUI6 v6-kitkat分支的代码

2.目前MIUI官网的MIUI for GT-I9300 合作版是我发布在MIUI官网的MIUI

3.如果你对本项目感兴趣或者有什么意见或建议,欢迎联系nianxia1007@gmail.com

编译教程

1.安装Java SDK和Android SDK 

2.安装Git and Repo

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo

附：AOSP编译环境搭建:https://github.com/nian0114/auto

3.同步代码

$ mkdir MIUI && cd MIUI

$ repo init -u git://github.com/MiCode/patchrom.git -b v6-kitkat

$ repo sync -j4

$ git clone https://github.com/nian0114/patchrom_miui_m0

4.编译MIUI

$ source build/envsetup.sh && cd m0

$ make fullota

5.输出目录out下的fullota.zip即为所得MIUI ROM

感谢

感谢MIUI官方开源patchrom

感谢github上无私奉献代码的朋友
