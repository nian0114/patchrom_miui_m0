.class Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
.super Ljava/lang/Thread;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertShareInfoThread"
.end annotation


# instance fields
.field private final mIsHandoverInitiated:Z

.field private final mIsMultiple:Z

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mTypeOfMultipleFiles:Ljava/lang/String;

.field private final mTypeOfSingleFile:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "multiple"    # Z
    .param p4, "typeOfSingleFile"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "typeOfMultipleFiles"    # Ljava/lang/String;
    .param p8, "handoverInitiated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 388
    const-string v0, "Insert ShareInfo Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 389
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 390
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsMultiple:Z

    .line 391
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    .line 392
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUri:Ljava/lang/String;

    .line 393
    iput-object p6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 394
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    .line 395
    iput-boolean p8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsHandoverInitiated:Z

    .line 397
    monitor-enter p1

    .line 398
    :try_start_0
    # operator++ for: Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I

    .line 399
    monitor-exit p1

    .line 402
    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private insertMultipleShare()V
    .locals 9

    .prologue
    .line 425
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 426
    .local v2, "count":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 427
    .local v5, "ts":Ljava/lang/Long;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 428
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 429
    .local v3, "fileUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "contentType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 436
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v7, "mimetype"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v7, "destination"

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsHandoverInitiated:Z

    if-eqz v7, :cond_1

    .line 442
    const-string v7, "confirm"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private insertSingleShare()V
    .locals 4

    .prologue
    .line 456
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 457
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "uri"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v2, "mimetype"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v2, "destination"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsHandoverInitiated:Z

    if-eqz v2, :cond_0

    .line 461
    const-string v2, "confirm"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 468
    .local v0, "contentUri":Landroid/net/Uri;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 408
    const-string v0, "BluetoothOppManager"

    const-string v1, "Target bt device is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsMultiple:Z

    if-eqz v0, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->insertMultipleShare()V

    .line 416
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    # operator-- for: Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I

    .line 418
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 414
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->insertSingleShare()V

    goto :goto_1
.end method
