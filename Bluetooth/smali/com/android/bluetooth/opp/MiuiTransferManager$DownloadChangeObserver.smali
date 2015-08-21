.class Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;
.super Landroid/database/ContentObserver;
.source "MiuiTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->queryDownloadStatus()V

    return-void
.end method

.method queryDownloadStatus()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    .local v7, "query":Landroid/app/DownloadManager$Query;
    new-array v10, v14, [J

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1600(Lcom/android/bluetooth/opp/MiuiTransferManager;)J

    move-result-wide v11

    aput-wide v11, v10, v13

    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "total_size"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "cFileSize":I
    const-string v10, "bytes_so_far"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "cDownloadBytes":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, "fileSize":J
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .local v3, "downloadSize":J
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10, v3, v4}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferredBytes(J)V

    .end local v1    # "cDownloadBytes":I
    .end local v2    # "cFileSize":I
    .end local v3    # "downloadSize":J
    .end local v5    # "fileSize":J
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-array v10, v14, [J

    iget-object v11, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadObserverId:J
    invoke-static {v11}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1600(Lcom/android/bluetooth/opp/MiuiTransferManager;)J

    move-result-wide v11

    aput-wide v11, v10, v13

    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "reason"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .local v9, "reasonId":I
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, "reason":I
    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "download failed! reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadChangeObserver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v10}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFailed()V

    .end local v8    # "reason":I
    .end local v9    # "reasonId":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method
