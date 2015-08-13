.class public Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;
.super Landroid/os/Handler;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/graphics/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/whetstone/graphics/BitmapCache;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/graphics/BitmapCache;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->this$0:Lcom/miui/whetstone/graphics/BitmapCache;

    .line 198
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 205
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 230
    :pswitch_0
    const-string v1, "WhetstoneBitmapCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 233
    return-void

    .line 207
    :pswitch_1
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->this$0:Lcom/miui/whetstone/graphics/BitmapCache;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v2, v1}, Lcom/miui/whetstone/graphics/BitmapCache;->diskInit(Ljava/io/File;)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;

    .line 211
    .local v0, "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    invoke-interface {v0}, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;->callback()V

    goto :goto_0

    .line 214
    .end local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;

    .line 215
    .restart local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    invoke-interface {v0}, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;->callback()V

    goto :goto_0

    .line 218
    .end local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;

    .line 219
    .restart local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    invoke-interface {v0}, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;->callback()V

    goto :goto_0

    .line 222
    .end local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;

    .line 223
    .restart local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    invoke-interface {v0}, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;->callback()V

    goto :goto_0

    .line 226
    .end local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;

    .line 227
    .restart local v0    # "cb":Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    invoke-interface {v0}, Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;->callback()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
