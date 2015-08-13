.class Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;
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
    name = "BitmapPutListMessage"
.end annotation


# instance fields
.field private mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p2, "bitmaps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 447
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 450
    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;
    invoke-static {}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$000()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    const-string v5, "WhetstoneBitmapCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add cache start, size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->mBitmaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 454
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 458
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;

    iget-object v5, v5, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;->mKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 459
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;
    invoke-static {v5}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$100(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Lcom/miui/whetstone/graphics/BitmapCache;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5, v1}, Lcom/miui/whetstone/graphics/BitmapCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 460
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :cond_2
    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->DEBUG:Ljava/lang/Boolean;
    invoke-static {}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$000()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 464
    const-string v5, "WhetstoneBitmapCache"

    const-string v6, "add cache end, "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_3
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 468
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapPutListMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$200(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 470
    return-void
.end method
