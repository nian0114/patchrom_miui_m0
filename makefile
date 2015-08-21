#
# Makefile for I9300
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_m0.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Bluetooth

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-modified-apps := AntiSpam ApplicationsProvider AuthManager Backup Browser BugReport Calculator Calendar CalendarProvider CloudService Contacts DocumentsUI DownloadProvider DownloadProviderUi Email FileExplorer GuardProvider InCallUI LiveWallpapersPicker MediaProvider MiAssistant MiuiCompass MiuiGallery MiuiHome MiuiKeyguard MiLinkService MiuiVideo MiuiSystemUI MiWallpaper Mms NetworkAssistant2 Notes PackageInstaller  Provision QuickSearchBox SettingsProvider SoundRecorder TeleService TelephonyProvider Weather WeatherProvider XiaomiAccount XiaomiServiceFramework YellowPage ContactsProvider DeskClock miuisystem Music Settings SecurityCenter ThemeManager Updater 

local-phone-apps := Bluetooth HTMLViewer KeyChain Nfc PacProcessor \
        UserDictionaryProvider WAPPushManager SamsungServiceMode PicoTts Stk CertInstaller

local-phone-priv-apps := BackupRestoreConfirmation DefaultContainerService FusedLocation \
        ExternalStorageProvider InputDevices OneTimeInitializer ProxyHandler SharedStorageBackup \
        Shell Tag VpnDialogs 

local-density := XHDPI
PORT_PRODUCT := nian_i9305

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= 

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp -rf other/system $(ZIP_DIR)/
	cp -rf other/tg/system $(ZIP_DIR)/
	echo "mijl.changelog.ftpPath=http://www.nianrom.cn/miui/nian/omni/" >> $(ZIP_DIR)/system/build.prop 
	@echo goodbye! miui prebuilt binaries!
	cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
	rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
	cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
	rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
	cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
