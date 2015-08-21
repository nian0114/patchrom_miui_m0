.class public Lcom/android/bluetooth/map/BluetoothMapUtils;
.super Ljava/lang/Object;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapUtils$1;,
        Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    }
.end annotation


# static fields
.field private static final HANDLE_TYPE_EMAIL_MASK:J = 0x10000000L

.field private static final HANDLE_TYPE_MASK:J = 0x78000000L

.field private static final HANDLE_TYPE_MMS_MASK:J = 0x8000000L

.field private static final HANDLE_TYPE_SMS_CDMA_MASK:J = 0x40000000L

.field private static final HANDLE_TYPE_SMS_GSM_MASK:J = 0x20000000L

.field private static final TAG:Ljava/lang/String; = "MapUtils"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getCpHandle(Ljava/lang/String;)J
    .locals 4
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 92
    .local v0, "cpHandle":J
    const-wide/32 v2, -0x78000001

    and-long/2addr v0, v2

    .line 93
    return-wide v0
.end method

.method public static getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 6
    .param p0, "cpHandle"    # J
    .param p2, "messageType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 53
    const-string v0, "-1"

    .line 54
    .local v0, "mapHandle":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_0
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x8000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x20000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 61
    goto :goto_0

    .line 63
    :pswitch_2
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x40000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    goto :goto_0

    .line 66
    :pswitch_3
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x10000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMsgHandleAsLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 81
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 6
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 102
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 104
    .local v0, "cpHandle":J
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 111
    :goto_0
    return-object v2

    .line 106
    :cond_0
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 107
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 108
    :cond_1
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 109
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 110
    :cond_2
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 111
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 113
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message type not found in handle string."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
