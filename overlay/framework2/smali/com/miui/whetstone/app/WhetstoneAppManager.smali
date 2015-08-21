.class public Lcom/miui/whetstone/app/WhetstoneAppManager;
.super Ljava/lang/Object;
.source "WhetstoneAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhetstoneAppManager"

.field private static final UNINIT:I = -0x2

.field private static _sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;


# instance fields
.field private mApplicationThread:Landroid/os/IBinder;

.field public mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

.field private mContex:Landroid/content/Context;

.field public mEnable:Z

.field public mHasInit:Z

.field public mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 37
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/app/WhetstoneAppManager;->attach(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public static addBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p0, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 87
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->addBitmapForDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 97
    :cond_0
    return-void
.end method

.method private checkInit()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 41
    iget-boolean v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    .line 43
    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    .line 44
    .local v0, "level":I
    if-eq v0, v3, :cond_0

    .line 45
    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mEnable:Z

    .line 46
    iput-boolean v2, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 49
    .end local v0    # "level":I
    :cond_0
    return-void

    .line 45
    .restart local v0    # "level":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static handleTrimMemory(I)Z
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "finish":Z
    packed-switch p0, :pswitch_data_0

    .line 139
    :goto_0
    return v0

    .line 125
    :pswitch_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v1, v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v1, v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v1, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->onTrimMemory(I)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 131
    :pswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/whetstone/utils/UtilsNative;->trimApplicationDalvik(I)V

    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_2
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->clearOpenGLCache()V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isEnable()Z
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 114
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-boolean v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-boolean v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mEnable:Z

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 106
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p0}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->restoreDirectBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static setHardwareRendererIfNeeded()V
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->isOPENGLDisableNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public static trimHeapSizeIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 150
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    iget-object v0, v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/miui/whetstone/utils/UtilsNative;->trimDalvikHeapSize()V

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mWhetstonePackageInfo:Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/miui/whetstone/graphics/BitmapCacheManager;

    iget-object v1, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mContex:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    .line 63
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mBitmapCacheManager:Lcom/miui/whetstone/graphics/BitmapCacheManager;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/graphics/BitmapCacheManager;->onRestoreAll(Landroid/app/Activity;)V

    .line 83
    :cond_0
    return-void
.end method
