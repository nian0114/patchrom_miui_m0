.class final enum Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
.super Ljava/lang/Enum;
.source "PeripheralConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/PeripheralConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum CONNECTFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum CONNECTING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum DISCOVERFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum DISCOVERING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

.field public static final enum READY:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "CONNECTFAILED"

    invoke-direct {v0, v1, v6}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "DISCOVERING"

    invoke-direct {v0, v1, v7}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "DISCOVERFAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    new-instance v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const-string v1, "READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->READY:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    sget-object v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->IDLE:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->CONNECTFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERING:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->DISCOVERFAILED:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->READY:Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->$VALUES:[Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    return-object v0
.end method

.method public static values()[Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;->$VALUES:[Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/ble/PeripheralConnectionManager$State;

    return-object v0
.end method
