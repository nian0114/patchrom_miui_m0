#
# Makefile for GT-I9305
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip
local-density := XHDPI

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_Test.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := GalaxyS3Settings

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-removed-apps := MediaProvider BugReport Email GameCenter GameCenterSDKService GuardProvider KingSoftCleaner LBESEC_MIUI MiuiVideo MiWallpaper SuperMarket VoiceAssist  YellowPage
local-miui-apps     := 
local-miui-modified-apps := QuickSearchBox ThemeManager MiuiHome Settings Phone
PORT_PRODUCT := nian_i9300

# All apps need to be removed from original ZIP file 
local-remove-apps   := 

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	rm -rf $(ZIP_DIR)/system/media/video/*
	cp -rf other/bin/* $(ZIP_DIR)/system/bin/
	cp -rf other/app/* $(ZIP_DIR)/system/app/
	cp -rf other/lib/* $(ZIP_DIR)/system/lib/
	mkdir -p $(ZIP_DIR)/data/app
	cp -rf other/data/app/* $(ZIP_DIR)/data/app/

