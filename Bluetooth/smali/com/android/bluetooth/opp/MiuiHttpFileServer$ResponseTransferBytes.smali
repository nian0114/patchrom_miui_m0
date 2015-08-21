.class Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;
.super Ljava/lang/Object;
.source "MiuiHttpFileServer.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiHttpFileServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseTransferBytes"
.end annotation


# instance fields
.field final downloadRate:F

.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->downloadRate:F

    return-void
.end method

.method private declared-synchronized updateBytes()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    monitor-enter p0

    const-wide/16 v0, 0x0

    .local v0, "bytes":J
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    # getter for: Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->access$000(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .local v3, "l":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_0

    .end local v3    # "l":Ljava/lang/Long;
    :cond_0
    long-to-float v4, v0

    mul-float/2addr v4, v7

    float-to-long v0, v4

    long-to-float v4, v0

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    # getter for: Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mCurrentFileLength:J
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->access$100(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)J

    move-result-wide v5

    long-to-float v5, v5

    mul-float/2addr v5, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    # getter for: Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mCurrentFileLength:J
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->access$100(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-long v0, v4

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    # getter for: Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->access$200(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferredBytes(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public onTransferFinished(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;)V
    .locals 4
    .param p1, "res"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    # getter for: Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->access$000(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->getResponsePos()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransferredBytes(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;J)V
    .locals 3
    .param p1, "res"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .param p2, "bytes"    # J

    .prologue
    invoke-virtual {p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->getResponsePos()I

    move-result v0

    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    # getter for: Lcom/android/bluetooth/opp/MiuiHttpFileServer;->mTransferBytesList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/bluetooth/opp/MiuiHttpFileServer;->access$000(Lcom/android/bluetooth/opp/MiuiHttpFileServer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseTransferBytes;->updateBytes()V

    return-void
.end method
