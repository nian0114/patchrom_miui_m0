.class public Lcom/android/internal/util/slim/QSConstants;
.super Ljava/lang/Object;
.source "QSConstants.java"


# static fields
.field public static DYNAMIC_TILES_DEFAULT:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static TILES_DEFAULT:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILE_AIRPLANE:Ljava/lang/String; = "toggleAirplane"

.field public static final TILE_ALARM:Ljava/lang/String; = "toggleAlarm"

.field public static final TILE_AUTOROTATE:Ljava/lang/String; = "toggleAutoRotate"

.field public static final TILE_BATTERY:Ljava/lang/String; = "toggleBattery"

.field public static final TILE_BLUETOOTH:Ljava/lang/String; = "toggleBluetooth"

.field public static final TILE_BRIGHTNESS:Ljava/lang/String; = "toggleBrightness"

.field public static final TILE_BUGREPORT:Ljava/lang/String; = "toggleBugReport"

.field public static final TILE_CONTACT:Ljava/lang/String; = "tileContact"

.field public static final TILE_CUSTOM:Ljava/lang/String; = "toggleCustom"

.field public static final TILE_CUSTOM_DELIMITER:Ljava/lang/String; = " =action= "

.field public static final TILE_CUSTOM_KEY:Ljava/lang/String; = " Key="

.field public static final TILE_DELIMITER:Ljava/lang/String; = "|"

.field public static final TILE_EXPANDEDDESKTOP:Ljava/lang/String; = "toggleExpandedDesktop"

.field public static final TILE_IMESWITCHER:Ljava/lang/String; = "toggleImeSwitcher"

.field public static final TILE_LOCATION:Ljava/lang/String; = "toggleLocation"

.field public static final TILE_LOCKSCREEN:Ljava/lang/String; = "toggleLockScreen"

.field public static final TILE_LTE:Ljava/lang/String; = "toggleLte"

.field public static final TILE_MOBILEDATA:Ljava/lang/String; = "toggleMobileData"

.field public static final TILE_MUSIC:Ljava/lang/String; = "toggleMusic"

.field public static final TILE_NETWORKMODE:Ljava/lang/String; = "toggleNetworkMode"

.field public static final TILE_NFC:Ljava/lang/String; = "toggleNfc"

.field public static final TILE_QUICKRECORD:Ljava/lang/String; = "toggleQuickRecord"

.field public static final TILE_QUIETHOURS:Ljava/lang/String; = "toggleQuietHours"

.field public static final TILE_REBOOT:Ljava/lang/String; = "toggleReboot"

.field public static final TILE_RINGER:Ljava/lang/String; = "toggleSound"

.field public static final TILE_SCREENTIMEOUT:Ljava/lang/String; = "toggleScreenTimeout"

.field public static final TILE_SETTINGS:Ljava/lang/String; = "toggleSettings"

.field public static final TILE_SLEEP:Ljava/lang/String; = "toggleSleepMode"

.field public static final TILE_SYNC:Ljava/lang/String; = "toggleSync"

.field public static final TILE_THEME:Ljava/lang/String; = "toggleTheme"

.field public static final TILE_TORCH:Ljava/lang/String; = "toggleTorch"

.field public static final TILE_USBTETHER:Ljava/lang/String; = "toggleUsbTether"

.field public static final TILE_USER:Ljava/lang/String; = "toggleUser"

.field public static final TILE_VOLUME:Ljava/lang/String; = "toggleVolume"

.field public static final TILE_WIFI:Ljava/lang/String; = "toggleWifi"

.field public static final TILE_WIFIAP:Ljava/lang/String; = "toggleWifiAp"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleUser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBrightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleSettings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleWifi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleMobileData"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBattery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleAirplane"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleLocation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/slim/QSConstants;->DYNAMIC_TILES_DEFAULT:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->DYNAMIC_TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleAlarm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->DYNAMIC_TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleBugReport"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->DYNAMIC_TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleImeSwitcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/util/slim/QSConstants;->DYNAMIC_TILES_DEFAULT:Ljava/util/ArrayList;

    const-string v1, "toggleUsbTether"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
