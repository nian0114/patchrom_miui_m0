.class public Lcom/android/bluetooth/opp/MiuiTransferManager;
.super Ljava/lang/Object;
.source "MiuiTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;,
        Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;,
        Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;
    }
.end annotation


# static fields
.field public static final RECVER:I = 0x1

.field public static final SENDER:I

.field private static mInstance:Lcom/android/bluetooth/opp/MiuiTransferManager;


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;

.field private final D:Z

.field private final TAG:Ljava/lang/String;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectAPReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedAP:Z

.field private mConnectedWD:Z

.field private mContext:Landroid/content/Context;

.field private mDownloadChangeObserver:Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

.field private mDownloadIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadObserverId:J

.field private mDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mDownloadUri:Landroid/net/Uri;

.field private mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

.field private mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

.field private mManagerType:I

.field private mPort:I

.field private mPwd:Ljava/lang/String;

.field private mRecvingFile:Z

.field private mSSID:Ljava/lang/String;

.field private mSendingFile:Z

.field private mStartedAP:Z

.field private mStartedWD:Z

.field private mWifiEnable:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->D:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    iput v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPort:I

    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mManagerType:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/opp/MiuiTransferManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-wide v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/opp/MiuiTransferManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/MiuiTransferManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mRecvingFile:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSendingFile:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/MiuiTransferManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiTransferManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    return v0
.end method

.method private cancelRecv()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mRecvingFile:Z

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v3, "MiuiTransferManager cancelRecv"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0

    .end local v1    # "id":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private cancelSend()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSendingFile:Z

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "MiuiTransferManager cancelSend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/bluetooth/opp/MiuiTransferManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    sget-object v0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mInstance:Lcom/android/bluetooth/opp/MiuiTransferManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mInstance:Lcom/android/bluetooth/opp/MiuiTransferManager;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/opp/MiuiTransferManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mInstance:Lcom/android/bluetooth/opp/MiuiTransferManager;

    sget-object v0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mInstance:Lcom/android/bluetooth/opp/MiuiTransferManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/reflect/IllegalArgumentException;

    const-string v1, "Context cannot be null!"

    invoke-direct {v0, v1}, Lmiui/reflect/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private useDownloadManager(Ljava/lang/String;Ljava/io/File;)J
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;

    :cond_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .local v0, "request":Landroid/app/DownloadManager$Request;
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mRecvingFile:Z

    iget-wide v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J

    return-wide v1
.end method

.method private useHttpClient(Ljava/lang/String;Ljava/io/File;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/opp/MiuiTransferManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/bluetooth/opp/MiuiTransferManager$4;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mManagerType:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->cancelSend()Z

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->stopAP()V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->stopWD()V

    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadChangeObserver:Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadChangeObserver:Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadChangeObserver:Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectAPReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectAPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectAPReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    sput-object v2, Lcom/android/bluetooth/opp/MiuiTransferManager;->mInstance:Lcom/android/bluetooth/opp/MiuiTransferManager;

    return-void

    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mManagerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->cancelRecv()V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->disconnectAP()V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->disconnectWD()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "error type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connectAP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iput-boolean v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectAP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    const/4 v3, 0x0

    .local v3, "succeed":Z
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v6, "wifi disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    const/4 v5, 0x2

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v6, "already connect to mi ap."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .local v2, "netId":I
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect to Ap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public connectWD(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iput-boolean v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectWD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    const/4 v3, 0x0

    .local v3, "succeed":Z
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v6, "wifi disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v5, 0x2

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v6, "already connect with WD mode."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .local v2, "netId":I
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect WD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public disconnectAP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnectAP: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public disconnectWD()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnectWD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public getDownloadFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/bluetooth/opp/MiuiTransferManager$1;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$1;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$ConnectReceiver;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectAPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectAPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mManagerType:I

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedAP:Z

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mManagerType:I

    if-ne v1, v6, :cond_1

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedAP:Z

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mConnectedWD:Z

    new-instance v1, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadChangeObserver:Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadChangeObserver:Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v2, "error type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public recvFile(Ljava/lang/String;Ljava/io/File;)J
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recv file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/MiuiTransferManager;->useHttpClient(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public recvFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->recvFile(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    iget v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPort:I

    invoke-direct {v3, v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;-><init>(I)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->setTransferredBytesListener(Lcom/android/bluetooth/opp/MiuiOnTransferListener;)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->start()V

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v4, "start http file server."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "ip":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedAP:Z

    if-eqz v3, :cond_2

    const-string v1, "192.168.43.1"

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "url":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mHttpFileServer:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->genFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->addWebFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add web file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSendingFile:Z

    return-object v2

    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v4, "http server start failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "ip":Ljava/lang/String;
    :cond_2
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    if-eqz v3, :cond_3

    const-string v1, "192.168.49.1"

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v4, "wlan ip is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_1

    .restart local v2    # "url":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v4, "sendFile error file operation!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public setCallback(Lcom/android/bluetooth/opp/MiuiOnTransferListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    return-void
.end method

.method public setHttpServerPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    iput p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPort:I

    return-void
.end method

.method public startAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedAP:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedAP:Z

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mPwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v4, "ap already start."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    .local v2, "succeed":Z
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start Ap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    invoke-interface {v3, v1}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferReady(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0
.end method

.method public startWD()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "startWD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "wifi disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/MiuiTransferManager$2;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$2;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method public stopAP()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedAP:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedAP:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "stopAP: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0
.end method

.method public stopWD()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mStartedWD:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;

    const-string v1, "stopWD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/MiuiTransferManager$3;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$3;-><init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiEnable:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0
.end method
