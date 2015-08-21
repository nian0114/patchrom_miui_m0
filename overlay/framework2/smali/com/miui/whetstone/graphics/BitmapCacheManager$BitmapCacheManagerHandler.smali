.class Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;
.super Landroid/os/Handler;
.source "BitmapCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/graphics/BitmapCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapCacheManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    .line 196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 216
    const-string v3, "WhetstoneBitmapCache"

    const-string v4, "invalid msg"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 205
    .local v1, "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v3, v1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->recycleBitmapsAndTrim(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 208
    .end local v1    # "arg1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapValue;>;"
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 209
    .local v2, "array":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v3, v2}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->restoreBitmaps(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_0

    .line 212
    .end local v2    # "array":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 213
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapCacheManagerHandler;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v3, v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->refreshUI(Landroid/app/Activity;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
