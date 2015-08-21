.class Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;
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
    name = "BitmapClearMessage"
.end annotation


# instance fields
.field mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/graphics/BitmapCacheManager;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/Integer;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;->mKey:Ljava/lang/String;

    .line 525
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;->this$0:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    # getter for: Lcom/miui/whetstone/graphics/BitmapCacheManager;->sBitmapManager:Lcom/miui/whetstone/graphics/BitmapCache;
    invoke-static {v0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->access$100(Lcom/miui/whetstone/graphics/BitmapCacheManager;)Lcom/miui/whetstone/graphics/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCacheManager$BitmapClearMessage;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/graphics/BitmapCache;->clearBitmapFromDiskCache(Ljava/lang/String;)V

    .line 530
    return-void
.end method
