.class Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "extra_download_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .local v1, "id":J
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadIdList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1400(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    .local v3, "query":Landroid/app/DownloadManager$Query;
    new-array v7, v11, [J

    aput-wide v1, v7, v10

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .local v0, "c":Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "reason"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .local v5, "reasonId":I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download failed! reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "reason":Ljava/lang/String;
    .end local v5    # "reasonId":I
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;

    move-result-object v7

    new-array v8, v11, [J

    aput-wide v1, v8, v10

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager;->removeRecordOnly([J)I

    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "id":J
    .end local v3    # "query":Landroid/app/DownloadManager$Query;
    :cond_1
    return-void

    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "id":J
    .restart local v3    # "query":Landroid/app/DownloadManager$Query;
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadManager:Landroid/app/DownloadManager;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$1500(Lcom/android/bluetooth/opp/MiuiTransferManager;)Landroid/app/DownloadManager;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v6

    .local v6, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # setter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mDownloadUri:Landroid/net/Uri;
    invoke-static {v7, v6}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$202(Lcom/android/bluetooth/opp/MiuiTransferManager;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$DownloadReceiver;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferFinished()V

    goto :goto_0
.end method
