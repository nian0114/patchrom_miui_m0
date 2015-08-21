.class public final enum Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
.super Ljava/lang/Enum;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field public static final enum SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 41
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "SMS_GSM"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 42
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "SMS_CDMA"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 43
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    const-string v1, "MMS"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->$VALUES:[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method
