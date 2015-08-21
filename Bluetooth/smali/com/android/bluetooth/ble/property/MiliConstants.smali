.class public Lcom/android/bluetooth/ble/property/MiliConstants;
.super Ljava/lang/Object;
.source "MiliConstants.java"


# static fields
.field private static final DEVICE_ADDRESS_MASK:J = 0xffffff800000L

.field private static final MILI_ADDRESS_PATTERN:J = 0x880f10000000L

.field private static final MILI_ADDRESS_PREFIX:Ljava/lang/String; = "88:0F:10:"

.field public static final UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

.field public static final UUID_IMMEDIATE_ALERT_LEVEL:Ljava/util/UUID;

.field public static final UUID_IMMEDIATE_ALERT_SERVICE:Ljava/util/UUID;

.field public static final UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "fee1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    const-string v0, "fed0"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

    const-string v0, "fed1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

    const-string v0, "fed2"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

    const-string v0, "fedd"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

    const-string v0, "fede"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

    sget-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_IMMEDIATE_ALERT_SERVICE:Ljava/util/UUID;

    sget-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_IMMEDIATE_ALERT_LEVEL:Ljava/util/UUID;

    const-string v0, "fee0"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    const-string v0, "ff01"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    const-string v0, "ff04"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

    const-string v0, "ff05"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    const-string v0, "ff06"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

    const-string v0, "ff07"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMiliDevice(Ljava/lang/String;)Z
    .locals 1
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "88:0F:10:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
