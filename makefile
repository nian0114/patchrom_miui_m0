#
# Makefile for ns
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip
local-density := XHDPI

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-removed-apps := MediaProvider
local-miui-apps     := 
local-miui-modified-apps := AntiSpam Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts \
			ContactsProvider DeskClock DownloadProvider DownloadProviderUi FileExplorer MiuiCompass \
			MiuiGallery MiuiHome MiuiSystemUI MiWallpaper Mms Music NetworkAssistant2 Notes PackageInstaller Phone \
			PaymentService Provision QuickSearchBox Settings SoundRecorder TelephonyProvider ThemeManager Updater VpnDialogs \
			Weather WeatherProvider XiaomiServiceFramework YellowPage


# All apps need to be removed from original ZIP file 
local-remove-apps   := Development DSPManager GalaxyNote2Settings SetupWizard SystemUI Talk \
ROMControl Apollo VoiceDialer PerformanceControl ParanoidPreferences PlayStore VideoEditor \
ThemeChooser CMWallpapers CMAccount CMUpdater CMFileManager Term Trebuchet CellBroadcastReceiver \
HoloSpiralWallpaper LatinIME LiveWallpapers MagicSmokeWallpapers VisualizationWallpapers Galaxy4 Gallery2

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
	cp -rf other/system_app/* $(ZIP_DIR)/system/app
	cp -rf other/system_bin/* $(ZIP_DIR)/system/bin
	cp -rf other/system_etc/* $(ZIP_DIR)/system/etc
	cp -rf other/system_framework/* $(ZIP_DIR)/system/framework
	cp -rf other/system_lib/* $(ZIP_DIR)/system/lib
	cp -rf other/system_usr/* $(ZIP_DIR)/system/usr
	cp -rf other/xbin/* $(ZIP_DIR)/system/xbin
	rm -rf $(ZIP_DIR)/system/media/video/*
