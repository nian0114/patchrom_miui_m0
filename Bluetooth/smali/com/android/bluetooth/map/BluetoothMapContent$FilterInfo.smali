.class Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterInfo"
.end annotation


# static fields
.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_SMS:I


# instance fields
.field msgType:I

.field phoneAlphaTag:Ljava/lang/String;

.field phoneNum:Ljava/lang/String;

.field phoneType:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContent;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 112
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    .line 113
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContent;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapContent$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V

    return-void
.end method
