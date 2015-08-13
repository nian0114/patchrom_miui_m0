.class public Lcom/miui/whetstone/graphics/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;,
        Lcom/miui/whetstone/graphics/BitmapCache$HandleCallback;
    }
.end annotation


# static fields
.field public static final BITMAP_SIZE:I = 0x64

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static final DISK_CACHE_SUBDIR:Ljava/lang/String; = "whetstone_thumbnails"

.field public static final MSG_CLEAR_CACHE:I = 0x5

.field public static final MSG_GET_CACHE:I = 0x4

.field public static final MSG_INIT_DIR:I = 0x1

.field public static final MSG_PUT_ALL_CACHE:I = 0x7

.field public static final MSG_PUT_CACHE:I = 0x2

.field public static final MSG_PUT_CACHE_AND_RECYCLE:I = 0x3

.field public static final MSG_RESTORE_ALL_CACHE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "WhetstoneBitmapCache"


# instance fields
.field private mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

.field private mRootDirectory:Ljava/io/File;

.field private mTotalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/graphics/BitmapCache;->DEBUG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pathName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    .line 46
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p2}, Lcom/miui/whetstone/graphics/BitmapCache;->init(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 7
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BitmapCacheHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v2, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;-><init>(Lcom/miui/whetstone/graphics/BitmapCache;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    .line 54
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    const/4 v3, 0x1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "whetstone_thumbnails"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 55
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mHandler:Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;

    invoke-virtual {v2, v0}, Lcom/miui/whetstone/graphics/BitmapCache$DiskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    return-void
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/whetstone/graphics/BitmapCache;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "saveToPng"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p0, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 112
    const/4 v2, 0x1

    .line 114
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return v2

    .line 108
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 110
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v2

    .line 114
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 110
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    sget-object v2, Lcom/miui/whetstone/graphics/BitmapCache;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add BitmaptoCache key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 124
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the bitmap size has extend size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 131
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/miui/whetstone/graphics/BitmapCache;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    .line 143
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR]add bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e1":Ljava/lang/Exception;
    const-string v2, "WhetstoneBitmapCache"

    const-string v3, "[oops] save bitmap exception "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 145
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/miui/whetstone/graphics/BitmapCache;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "has alreaddy add?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 151
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public clearBitmapFromDiskCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v1, Lcom/miui/whetstone/graphics/BitmapCache;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "WhetstoneBitmapCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBitmapFromDiskcache key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 159
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget v1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    .line 167
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    return-void
.end method

.method protected diskInit(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    .line 61
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 69
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 70
    .local v4, "temp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "temp":Ljava/io/File;
    :cond_0
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 74
    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mTotalSize:I

    .line 75
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    iget-object v5, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    const-string v5, "WhetstoneBitmapCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create cache dir "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    :goto_1
    return-void

    .line 81
    :cond_2
    sget-object v5, Lcom/miui/whetstone/graphics/BitmapCache;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v2, Lcom/miui/whetstone/graphics/BitmapCache;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmapFromDiskCache key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/miui/whetstone/graphics/BitmapCache;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 178
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from diskcaceh error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 191
    :cond_2
    const-string v2, "WhetstoneBitmapCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the key is not in cache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
