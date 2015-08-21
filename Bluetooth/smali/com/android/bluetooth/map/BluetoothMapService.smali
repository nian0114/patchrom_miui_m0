.class public Lcom/android/bluetooth/map/BluetoothMapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final AUTH_CHALL_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.authchall"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z = true

.field private static final DISCONNECT_MAP:I = 0x3

.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "com.android.bluetooth.map.sessionkey"

.field private static final MAP_UUIDS:[Landroid/os/ParcelUuid;

.field public static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138c

.field public static final MSG_OBEX_AUTH_CHALL:I = 0x138b

.field public static final MSG_RELEASE_WAKE_LOCK:I = 0x138d

.field public static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field public static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field public static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapService"

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.userconfirmtimeout"

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private isWaitingAuthorization:Z

.field private mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

.field private mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mInterrupted:Z

.field private mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

.field private mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 149
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 116
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    .line 122
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 126
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 128
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 130
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 132
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 134
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 142
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    .line 445
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 670
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    .line 155
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 57
    sput-object p0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSession()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startRfcommSocketListener()V

    return-void
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 4

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 236
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Server Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 223
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final closeService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    const-string v1, "BluetoothMapService"

    const-string v2, "MAP Service closeService in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mInterrupted:Z

    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeServerSocket()V

    .line 251
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->shutdown()V

    .line 254
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->join()V

    .line 255
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 263
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 268
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 273
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 276
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeConnectionSocket()V

    .line 278
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 279
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 281
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z

    .line 284
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 8

    .prologue
    .line 169
    const-string v5, "BluetoothMapService"

    const-string v6, "Map Service initSocket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "initSocketOK":Z
    const/16 v0, 0xa

    .line 175
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mInterrupted:Z

    if-nez v5, :cond_0

    .line 176
    const/4 v3, 0x1

    .line 180
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v6, "MAP SMS/MMS"

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    if-nez v3, :cond_0

    .line 189
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_2

    .line 206
    :cond_0
    :goto_2
    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mInterrupted:Z

    if-eqz v5, :cond_1

    .line 207
    const/4 v3, 0x0

    .line 209
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeServerSocket()V

    .line 212
    :cond_1
    if-eqz v3, :cond_4

    .line 218
    :goto_3
    return v3

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error create RfcommServerSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v3, 0x0

    goto :goto_1

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 191
    .local v4, "state":I
    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    .line 193
    const-string v5, "BluetoothMapService"

    const-string v6, "initServerSocket failed as BT is (being) turned off"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    :cond_3
    const-wide/16 v5, 0x12c

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "BluetoothMapService"

    const-string v6, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 216
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "state":I
    :cond_4
    const-string v5, "BluetoothMapService"

    const-string v6, "Error to create listening socket after 10 try"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 513
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "result"    # I

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    if-eq p1, v3, :cond_0

    .line 517
    const-string v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Map state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 520
    .local v1, "prevState":I
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v3, "android.bluetooth.profile.extra.STATE"

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 525
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v2

    .line 527
    .local v2, "s":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v2, :cond_0

    .line 528
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x9

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "prevState":I
    .end local v2    # "s":Lcom/android/bluetooth/btservice/AdapterService;
    :cond_0
    monitor-exit p0

    return-void

    .line 516
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private final startObexServerSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x138d

    const/4 v4, 0x0

    .line 287
    const-string v2, "BluetoothMapService"

    const-string v3, "Map Service startObexServerSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 291
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 292
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "StartingObexMapTransaction"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 294
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 298
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 300
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-direct {v2, v3, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    .line 302
    monitor-enter p0

    .line 304
    :try_start_0
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 305
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setChallenged(Z)V

    .line 306
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setCancelled(Z)V

    .line 307
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 310
    .local v1, "transport":Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    new-instance v2, Ljavax/obex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-direct {v2, v1, v3, v4}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 311
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 313
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 320
    return-void

    .line 307
    .end local v1    # "transport":Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "BluetoothMapService"

    const-string v1, "Map Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    const-string v1, "BluetoothMapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;->start()V

    .line 166
    :cond_0
    return-void
.end method

.method private stopObexServerSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    const-string v0, "BluetoothMapService"

    const-string v1, "MAP Service stopObexServerSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 331
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 336
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 339
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$SocketAcceptThread;

    .line 341
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 343
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeConnectionSocket()V

    .line 349
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startRfcommSocketListener()V

    .line 352
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 353
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 3

    .prologue
    const-string v1, "BluetoothMapService"

    const-string v2, "cleanup()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothMapService"

    const-string v2, "Unable to unregister map receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 540
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "result":Z
    const-string v1, "BluetoothMapService"

    const-string v2, "disconnectMap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 549
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 551
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 555
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 557
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeConnectionSocket()V

    .line 559
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 560
    const/4 v0, 0x1

    .line 561
    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
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
    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 572
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    monitor-exit p0

    .line 576
    return-object v0

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x2

    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    monitor-exit p0

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
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
    .line 580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 583
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 584
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 585
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 586
    .local v4, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 589
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 590
    .local v1, "connectionState":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 591
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 592
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v5    # "i":I
    :cond_2
    monitor-exit p0

    .line 597
    return-object v3

    .line 596
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, "priority":I
    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-object v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 632
    const-string v2, "BluetoothMapService"

    const-string v3, "start()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 634
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mInterrupted:Z

    .line 642
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 644
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return v4

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothMapService"

    const-string v3, "Unable to register map receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 651
    const-string v1, "BluetoothMapService"

    const-string v2, "stop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 659
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    .line 660
    const/4 v1, 0x1

    return v1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothMapService"

    const-string v2, "Unable to unregister map receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
