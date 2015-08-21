.class public Lcom/android/bluetooth/ble/property/AuthoriseHelper;
.super Ljava/lang/Object;
.source "AuthoriseHelper.java"


# static fields
.field public static final APPID_PAY:I = 0x2

.field public static final APPID_UNLOCK:I = 0x1

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "UnlockProfileHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptData(Lcom/android/bluetooth/ble/GattPeripheral;I[B)[B
    .locals 9
    .param p0, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p1, "appId"    # I
    .param p2, "plain"    # [B

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    invoke-static {p1, p2}, Lcom/android/bluetooth/ble/property/AuthoriseHelper;->getFixedData(I[B)[B

    move-result-object v1

    .local v1, "fixed":[B
    sget-object v5, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v6, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

    invoke-virtual {p0, v5, v6, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v2

    .local v2, "ret":Z
    if-nez v2, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v5, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v6, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/ble/GattPeripheral;->read(Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v0

    .local v0, "encrypted":[B
    if-eqz v0, :cond_2

    array-length v5, v0

    if-ne v5, v8, :cond_3

    :cond_2
    const-string v5, "UnlockProfileHelper"

    const-string v6, "read encrypt error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/bluetooth/ble/Utils;->bytesToInt([BI)I

    move-result v3

    .local v3, "retAppId":I
    const-string v5, "UnlockProfileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read encrypt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/bluetooth/ble/Utils;->parseBytes([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v0

    const/16 v6, 0x14

    if-lt v5, v6, :cond_0

    if-eq v3, p1, :cond_4

    const-string v5, "UnlockProfileHelper"

    const-string v6, "read encrypt appId not macthed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    :cond_4
    array-length v4, v0

    invoke-static {v0, v8, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getFixedData(I[B)[B
    .locals 6
    .param p0, "appId"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x14

    new-array v0, v3, [B

    .local v0, "fixed":[B
    invoke-static {p0}, Lcom/android/bluetooth/ble/Utils;->intToBytes(I)[B

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    if-ge v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x4

    aget-byte v4, p1, v1

    aput-byte v4, v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x4

    aput-byte v5, v0, v3

    goto :goto_1

    :cond_1
    const-string v3, "UnlockProfileHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixed data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/bluetooth/ble/Utils;->parseBytes([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static setKey(Lcom/android/bluetooth/ble/GattPeripheral;I[B)Z
    .locals 3
    .param p0, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p1, "appId"    # I
    .param p2, "key"    # [B

    .prologue
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v1, "UnlockProfileHelper"

    const-string v2, "setKey paramters error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {p1, p2}, Lcom/android/bluetooth/ble/property/AuthoriseHelper;->getFixedData(I[B)[B

    move-result-object v0

    .local v0, "fixed":[B
    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v1

    goto :goto_0
.end method
