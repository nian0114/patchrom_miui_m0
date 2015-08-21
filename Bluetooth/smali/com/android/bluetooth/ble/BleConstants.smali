.class public Lcom/android/bluetooth/ble/BleConstants;
.super Ljava/lang/Object;
.source "BleConstants.java"


# static fields
.field public static final UUID_BASE:Ljava/lang/String; = "0000%4s-0000-1000-8000-00805f9b34fb"

.field public static final UUID_BASE_RE:Ljava/lang/String;

.field public static final UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_BATTERY_LEVEL:Ljava/util/UUID;

.field private static final UUID_DESCRIPTOR_CHARACTERISTIC_USER_CONFIGURATION:Ljava/util/UUID;

.field private static final UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

.field public static final UUID_SERVICE_BATTERY:Ljava/util/UUID;

.field public static final UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

.field public static final UUID_SERVICE_LINK_LOSS:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v0, "0000%4s-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "...."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_BASE_RE:Ljava/lang/String;

    const-string v0, "1802"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

    const-string v0, "1803"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_LINK_LOSS:Ljava/util/UUID;

    const-string v0, "180f"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_BATTERY:Ljava/util/UUID;

    const-string v0, "2a06"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

    const-string v0, "2a19"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_BATTERY_LEVEL:Ljava/util/UUID;

    const-string v0, "2902"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_DESCRIPTOR_CLIENT_CHARACTERISTIC_CONFIGURATION:Ljava/util/UUID;

    const-string v0, "2901"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_DESCRIPTOR_CHARACTERISTIC_USER_CONFIGURATION:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UUID128(Ljava/lang/String;)Ljava/util/UUID;
    .locals 1
    .param p0, "uuid128"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static UUID16(Ljava/lang/String;)Ljava/util/UUID;
    .locals 3
    .param p0, "uuid16"    # Ljava/lang/String;

    .prologue
    const-string v0, "0000%4s-0000-1000-8000-00805f9b34fb"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static parseUUID(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "l":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/ble/BleConstants;->UUID_BASE_RE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "l":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
