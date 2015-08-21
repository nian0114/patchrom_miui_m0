.class public Lcom/android/bluetooth/ble/property/MiKeyConstants;
.super Ljava/lang/Object;
.source "MiKeyConstants.java"


# static fields
.field private static final DEVICE_ADDRESS_PREFIX:Ljava/lang/String; = "00:9C:9F"

.field private static final DEVICE_ADDRESS_PREFIX_1:Ljava/lang/String; = "8C:77:16"

.field public static final UUID_CHARACTERISTIC_REPORTER_NOTIFY:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_REPORTER_SET:Ljava/util/UUID;

.field public static final UUID_SERVICE_REPORTER:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "fe91"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_SERVICE_REPORTER:Ljava/util/UUID;

    const-string v0, "33f1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_CHARACTERISTIC_REPORTER_SET:Ljava/util/UUID;

    const-string v0, "33f2"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiKeyConstants;->UUID_CHARACTERISTIC_REPORTER_NOTIFY:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMiKeyDevice(Ljava/lang/String;)Z
    .locals 1
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_1

    const-string v0, "00:9C:9F"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8C:77:16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
