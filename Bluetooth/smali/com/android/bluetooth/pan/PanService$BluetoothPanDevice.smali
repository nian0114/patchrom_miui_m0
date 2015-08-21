.class Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
.super Ljava/lang/Object;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/PanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPanDevice"
.end annotation


# instance fields
.field private mIface:Ljava/lang/String;

.field private mIfaceAddr:Ljava/lang/String;

.field private mLocalRole:I

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "state"    # I
    .param p3, "ifaceAddr"    # Ljava/lang/String;
    .param p4, "iface"    # Ljava/lang/String;
    .param p5, "localRole"    # I

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->this$0:Lcom/android/bluetooth/pan/PanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput p2, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    .line 590
    iput-object p3, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;

    .line 591
    iput-object p4, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    .line 592
    iput p5, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    .line 593
    return-void
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .prologue
    .line 582
    iget v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    .param p1, "x1"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mIfaceAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;
    .param p1, "x1"    # I

    .prologue
    .line 582
    iput p1, p0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->mLocalRole:I

    return p1
.end method
