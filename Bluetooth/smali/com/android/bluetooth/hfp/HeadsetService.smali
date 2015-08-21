.class public Lcom/android/bluetooth/hfp/HeadsetService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final TAG:Ljava/lang/String; = "HeadsetService"

.field private static sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;


# instance fields
.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 93
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetService$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfp/HeadsetService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfp/HeadsetService;[I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # [I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I

    .prologue
    .line 45
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hfp/HeadsetService;->clccResponse(IIIIZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private clccResponse(IIIIZLjava/lang/String;I)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v9, 0xc

    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetClccResponse;-><init>(IIIIZLjava/lang/String;I)V

    invoke-virtual {v8, v9, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 494
    return-void
.end method

.method private static declared-synchronized clearHeadsetService()V
    .locals 2

    .prologue
    .line 314
    const-class v0, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit v0

    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 2

    .prologue
    .line 284
    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private phoneStateChanged(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 484
    .local v6, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetCallState;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;I)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v6, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "+ANDROID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    const-string v2, "HeadsetService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed unsolicited result code command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v2, 0xd

    new-instance v3, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    invoke-direct {v3, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 511
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 299
    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sput-object p0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_0
    monitor-exit v1

    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->cleanup()V

    .line 89
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->clearHeadsetService()V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 326
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0
.end method

.method connectAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method disconnectAudio()Z
    .locals 2

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 457
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "HeadsetService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 379
    .local v0, "priority":I
    return v0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    return-object v0
.end method

.method isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method isAudioOn()Z
    .locals 2

    .prologue
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 4

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->make(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 63
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V

    .line 72
    const/4 v2, 0x1

    return v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HeadsetService"

    const-string v3, "Unable to register headset receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 461
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 462
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 467
    :goto_0
    return v1

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 387
    const/4 v1, 0x0

    .line 390
    :goto_0
    return v1

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->doQuit()V

    .line 82
    const/4 v1, 0x1

    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HeadsetService"

    const-string v2, "Unable to unregister headset receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 471
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 472
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 477
    :goto_0
    return v1

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 401
    const/4 v1, 0x0

    .line 405
    :goto_0
    return v1

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method
