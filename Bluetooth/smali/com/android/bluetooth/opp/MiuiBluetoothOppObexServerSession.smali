.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppObexServerSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiOnTransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$1;,
        Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;,
        Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBluetoothObexOppServerSession"


# instance fields
.field private final D:Z

.field private mAccepted:I

.field private mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

.field private mCallback:Landroid/os/Handler;

.field private mChannelConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

.field private mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

.field private mFullFileName:Ljava/lang/String;

.field private mGetOperation:Ljavax/obex/Operation;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInterupted:Z

.field private mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

.field private mLocalShareInfoId:I

.field private mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

.field private mOutput:Ljava/io/OutputStream;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecvingFile:Z

.field private mServerBlocking:Z

.field private mSocket:Ljava/net/Socket;

.field private mSocketInput:Ljava/io/InputStream;

.field private mSocketOutput:Ljava/io/OutputStream;

.field private mSuccess:Z

.field private mTimeoutMsgSent:Z

.field private mTimestamp:J

.field private mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;Landroid/os/PowerManager$WakeLock;Landroid/os/PowerManager$WakeLock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transport"    # Ljavax/obex/ObexTransport;
    .param p3, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p4, "wakeLock2"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->D:Z

    iput v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInterupted:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mRecvingFile:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mChannelConnected:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSuccess:Z

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->getInstance(Landroid/content/Context;I)Lcom/android/bluetooth/opp/MiuiTransferManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->setCallback(Lcom/android/bluetooth/opp/MiuiOnTransferListener;)V

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mChannelConnected:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSuccess:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketInput:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFullFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFullFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLocalShareInfoId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLocalShareInfoId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimeoutMsgSent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiTransferManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;)Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketOutput:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInterupted:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSuccess:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseSocket()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mRecvingFile:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljavax/obex/ObexTransport;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    .prologue
    iget-wide v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimestamp:J

    return-wide v0
.end method

.method private createChannel([B)I
    .locals 7
    .param p1, "appParameter"    # [B

    .prologue
    const/16 v4, 0xd0

    const/16 v3, 0xc8

    const/16 v2, 0xc0

    const-string v5, "MiuiBluetoothObexOppServerSession"

    const-string v6, "createChannel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-direct {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;-><init>()V

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-virtual {v5, p1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->decodeBytes([B)V

    const-string v5, "MiuiBluetoothObexOppServerSession"

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-virtual {v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v6, "WLAN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    if-nez v2, :cond_5

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketInput:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketOutput:Ljava/io/OutputStream;

    new-instance v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;-><init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string v2, "MiuiBluetoothObexOppServerSession"

    const-string v3, "create socket."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimestamp:J

    const/16 v2, 0xa0

    :goto_0
    return v2

    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v6, "WIFI_DIRECT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v3, "MiuiBluetoothObexOppServerSession"

    const-string v4, "recv ssid is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/bluetooth/opp/MiuiTransferManager;->connectWD(Ljava/lang/String;)Z

    move-result v0

    .local v0, "connected":Z
    if-nez v0, :cond_0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/32 v5, 0xea60

    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mChannelConnected:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    goto :goto_1

    .end local v0    # "connected":Z
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v6, "WIFI_AP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/android/bluetooth/opp/MiuiTransferManager;->connectAP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "connected":Z
    if-nez v0, :cond_0

    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    const-wide/32 v5, 0xea60

    :try_start_6
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mChannelConnected:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v2

    goto :goto_2

    .end local v0    # "connected":Z
    :cond_4
    const-string v3, "MiuiBluetoothObexOppServerSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error link type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    :try_start_9
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move v2, v4

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiuiBluetoothObexOppServerSession"

    const-string v3, "socket connect error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v4

    goto/16 :goto_0
.end method

.method private safeCloseObex()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOutput:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOutput:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;

    invoke-interface {v0}, Ljavax/obex/Operation;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private safeCloseSocket()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private selectChannel([B)I
    .locals 7
    .param p1, "appParameter"    # [B

    .prologue
    const-string v4, "MiuiBluetoothObexOppServerSession"

    const-string v5, "selectChannel"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    invoke-direct {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;-><init>()V

    .local v2, "peerDevInfo":Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->decodeBytes([B)V

    const-string v4, "MiuiBluetoothObexOppServerSession"

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    invoke-direct {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->initDeviceInfo(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->selectLinkType(Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;)Ljava/lang/String;

    move-result-object v3

    .local v3, "type":Ljava/lang/String;
    const-string v4, "MiuiBluetoothObexOppServerSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .local v1, "headers":Ljavax/obex/HeaderSet;
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;

    invoke-interface {v4, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xa0

    .end local v1    # "headers":Ljavax/obex/HeaderSet;
    :goto_0
    return v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v4, "MiuiBluetoothObexOppServerSession"

    const-string v5, "select channel error!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xd0

    goto :goto_0
.end method

.method private selectLinkType(Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "peerDevInfo"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "selectLinkType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mBSSID:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mGatewayIp:Ljava/lang/String;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mNetmask:Ljava/lang/String;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->mSSID:Ljava/lang/String;

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "select wlan."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WLAN"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "select ap."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WIFI_AP"

    goto :goto_0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 2
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "addShare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTransfer()Lcom/android/bluetooth/opp/MiuiTransferManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    return-object v0
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 9
    .param p1, "operation"    # Ljavax/obex/Operation;

    .prologue
    const-string v6, "MiuiBluetoothObexOppServerSession"

    const-string v7, "onGet"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa0

    .local v3, "obexResponse":I
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;

    invoke-interface {v6}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v5

    .local v5, "request":Ljavax/obex/HeaderSet;
    invoke-static {v5}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "opName":Ljava/lang/String;
    const/16 v6, 0x4c

    invoke-virtual {v5, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .local v1, "appParameter":[B
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mGetOperation:Ljavax/obex/Operation;

    invoke-interface {v6}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOutput:Ljava/io/OutputStream;

    const-string v6, "SelectChannel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->selectChannel([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .end local v1    # "appParameter":[B
    .end local v4    # "opName":Ljava/lang/String;
    .end local v5    # "request":Ljavax/obex/HeaderSet;
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseObex()V

    return v3

    .restart local v1    # "appParameter":[B
    .restart local v4    # "opName":Ljava/lang/String;
    .restart local v5    # "request":Ljavax/obex/HeaderSet;
    :cond_0
    :try_start_1
    const-string v6, "CreateChannel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->createChannel([B)I

    move-result v3

    goto :goto_0

    :cond_1
    const-string v6, "MiuiBluetoothObexOppServerSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error op name! name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "appParameter":[B
    .end local v4    # "opName":Ljava/lang/String;
    .end local v5    # "request":Ljavax/obex/HeaderSet;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "MiuiBluetoothObexOppServerSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get getReceivedHeaders error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0xc0

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseObex()V

    throw v6
.end method

.method public onTransferFailed()V
    .locals 2

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "onTransferFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSuccess:Z

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransferFinished()V
    .locals 2

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "onTransferFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSuccess:Z

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mOnGetRecvFile:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransferReady(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "onTransferReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mChannelConnected:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransferredBytes(J)V
    .locals 6
    .param p1, "bytes"    # J

    .prologue
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mRecvingFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "contentUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;J)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->start()V

    .end local v3    # "contentUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->updateProgress(J)V

    goto :goto_0
.end method

.method public setAppInfo(Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    if-eqz v0, :cond_0

    const-string v0, "MiuiBluetoothObexOppServerSession"

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;

    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const-string v0, "MiuiBluetoothObexOppServerSession"

    const-string v1, "miui obex server stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInterupted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mRecvingFile:Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->close()V

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseObex()V

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseSocket()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unblock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z

    return-void
.end method
