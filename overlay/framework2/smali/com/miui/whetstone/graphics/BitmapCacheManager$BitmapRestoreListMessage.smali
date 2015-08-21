.class Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;
.super Ljava/lang/Object;
.source "BitmapCacheManager.java"

# interfaces
.implements Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/graphics/BitmapCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapRestoreListMessage"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Ljava/util/concurrent/ConcurrentHashMap;Landroid/app/Activity;)V
    .locals 0
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    .local p2, "bitmaps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 484
    iput-object p3, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->mActivity:Landroid/app/Activity;

    .line 485
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 488
    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;
    invoke-static {}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$000()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 489
    const-string v6, "WhetstoneBitmapCache"

    const-string v7, "get all from diskcache start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 492
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 493
    .local v0, "array":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 494
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 496
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$100(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Lcom/miui/whetstone/graphics/BitmapCache;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/miui/whetstone/graphics/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 497
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 498
    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->BITMAP_RECYCLE:Ljava/lang/Boolean;
    invoke-static {}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$300()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 499
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 503
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :cond_2
    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;
    invoke-static {}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$000()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 504
    const-string v6, "WhetstoneBitmapCache"

    const-string v7, "get all from diskcache end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_3
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 508
    .local v4, "msg1":Landroid/os/Message;
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 509
    .local v5, "msg2":Landroid/os/Message;
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    iget-object v6, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapRestoreListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    return-void
.end method
