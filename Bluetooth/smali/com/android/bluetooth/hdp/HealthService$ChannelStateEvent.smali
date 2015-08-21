.class Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelStateEvent"
.end annotation


# instance fields
.field mAddr:[B

.field mAppId:I

.field mCfgIndex:I

.field mChannelId:I

.field mFd:Ljava/io/FileDescriptor;

.field mState:I

.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;)V
    .locals 0
    .param p2, "appId"    # I
    .param p3, "addr"    # [B
    .param p4, "cfgIndex"    # I
    .param p5, "channelId"    # I
    .param p6, "state"    # I
    .param p7, "fileDescriptor"    # Ljava/io/FileDescriptor;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput p2, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAppId:I

    .line 852
    iput-object p3, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAddr:[B

    .line 853
    iput p4, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mCfgIndex:I

    .line 854
    iput p6, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    .line 855
    iput p5, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    .line 856
    iput-object p7, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mFd:Ljava/io/FileDescriptor;

    .line 857
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;Lcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hdp/HealthService;
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/io/FileDescriptor;
    .param p8, "x7"    # Lcom/android/bluetooth/hdp/HealthService$1;

    .prologue
    .line 841
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;-><init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;)V

    return-void
.end method
