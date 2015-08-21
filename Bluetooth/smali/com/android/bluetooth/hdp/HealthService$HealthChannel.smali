.class Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HealthChannel"
.end annotation


# instance fields
.field private mChannelFd:Landroid/os/ParcelFileDescriptor;

.field private mChannelId:I

.field private mChannelType:I

.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mState:I

.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 1
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "config"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p4, "channelType"    # I

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    .line 832
    iput-object p2, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 833
    iput-object p3, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    .line 835
    iput p4, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelType:I

    .line 836
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hdp/HealthService;
    .param p2, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "x2"    # Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/bluetooth/hdp/HealthService$1;

    .prologue
    .line 820
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .prologue
    .line 820
    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .param p1, "x1"    # I

    .prologue
    .line 820
    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    .prologue
    .line 820
    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .param p1, "x1"    # I

    .prologue
    .line 820
    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->mState:I

    return p1
.end method
