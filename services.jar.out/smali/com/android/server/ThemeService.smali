.class public Lcom/android/server/ThemeService;
.super Landroid/content/res/IThemeService$Stub;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThemeService$ThemeData;,
        Lcom/android/server/ThemeService$ThemeWorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/res/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

.field private mPkgName:Ljava/lang/String;

.field private mProgress:I

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/content/res/IThemeService$Stub;-><init>()V

    .line 83
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    .line 119
    iput-object p1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThemeServiceWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    .line 121
    iget-object v0, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v0, Lcom/android/server/ThemeService$ThemeWorkerHandler;

    iget-object v1, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ThemeService$ThemeWorkerHandler;-><init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    .line 123
    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v1, "Spawned worker thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createThemeDirIfNotExists()V

    .line 127
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createFontDirIfNotExists()V

    .line 128
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createAlarmDirIfNotExists()V

    .line 129
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createNotificationDirIfNotExists()V

    .line 130
    invoke-static {}, Landroid/content/pm/ThemeUtils;->createRingtoneDirIfNotExists()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ThemeService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/ThemeService;->doApplyTheme(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private applyBootAnimation(Ljava/lang/String;)Z
    .locals 9
    .parameter "themePath"

    .prologue
    .line 644
    const/4 v3, 0x0

    .line 646
    .local v3, success:Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 647
    .local v5, zip:Ljava/util/zip/ZipFile;
    const-string v6, "assets/bootanimation/bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 648
    .local v4, ze:Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    .line 650
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 651
    .local v2, is:Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bootanimation.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, bootAnimationPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v0}, Landroid/content/pm/ThemeUtils;->copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 654
    const/16 v6, 0x1e4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 657
    .end local v0           #bootAnimationPath:Ljava/lang/String;
    .end local v2           #is:Ljava/io/BufferedInputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    const/4 v3, 0x1

    .line 663
    .end local v4           #ze:Ljava/util/zip/ZipEntry;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 659
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load boot animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearBootAnimation()V
    .locals 3

    .prologue
    .line 667
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, anim:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 670
    :cond_0
    return-void
.end method

.method private createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/List;)Landroid/content/res/CustomTheme$Builder;
    .locals 2
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/res/CustomTheme$Builder;"
        }
    .end annotation

    .prologue
    .line 515
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/res/CustomTheme$Builder;

    iget-object v1, p1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    invoke-direct {v0, v1}, Landroid/content/res/CustomTheme$Builder;-><init>(Landroid/content/res/CustomTheme;)V

    .line 517
    .local v0, builder:Landroid/content/res/CustomTheme$Builder;
    const-string v1, "mods_icons"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->icons(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 521
    :cond_0
    const-string v1, "mods_overlays"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->overlay(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 525
    :cond_1
    const-string v1, "mods_fonts"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/CustomTheme$Builder;->fonts(Ljava/lang/String;)Landroid/content/res/CustomTheme$Builder;

    .line 529
    :cond_2
    return-object v0
.end method

.method private doApplyTheme(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0, v4, p1}, Lcom/android/server/ThemeService;->postFinish(ZLjava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 137
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 144
    :cond_1
    const/4 v2, 0x5

    invoke-direct {p0, v2, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 147
    const/16 v2, 0x4b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    div-int v1, v2, v3

    .line 149
    .local v1, progressIncrement:I
    invoke-direct {p0, p2}, Lcom/android/server/ThemeService;->updateProvider(Ljava/util/List;)V

    .line 151
    const-string v2, "mods_icons"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateIcons()V

    .line 153
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 156
    :cond_2
    const-string v2, "mods_homescreen"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateWallpaper()Z

    .line 158
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 161
    :cond_3
    const-string v2, "mods_lockscreen"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateLockscreen()Z

    .line 163
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 166
    :cond_4
    const/4 v0, 0x0

    .line 168
    .local v0, pi:Landroid/content/pm/PackageInfo;
    :try_start_2
    const-string v2, "default"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 169
    iget-object v2, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 173
    :cond_5
    :goto_1
    const-string v2, "mods_notifications"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->updateNotifications(Landroid/content/pm/PackageInfo;)Z

    .line 175
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 178
    :cond_6
    const-string v2, "mods_alarms"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->updateAlarms(Landroid/content/pm/PackageInfo;)Z

    .line 180
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 183
    :cond_7
    const-string v2, "mods_ringtones"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 184
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->updateRingtones(Landroid/content/pm/PackageInfo;)Z

    .line 185
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 188
    :cond_8
    const-string v2, "mods_bootanim"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 189
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateBootAnim()V

    .line 190
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 193
    :cond_9
    const-string v2, "mods_fonts"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 194
    invoke-direct {p0}, Lcom/android/server/ThemeService;->updateFonts()Z

    .line 195
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->incrementProgress(ILjava/lang/String;)V

    .line 198
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/server/ThemeService;->updateConfiguration(Ljava/util/List;)Z

    .line 200
    invoke-direct {p0}, Lcom/android/server/ThemeService;->killLaunchers()V

    .line 202
    invoke-direct {p0, v4, p1}, Lcom/android/server/ThemeService;->postFinish(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private incrementProgress(ILjava/lang/String;)V
    .locals 2
    .parameter "increment"
    .parameter "pkgName"

    .prologue
    const/16 v1, 0x64

    .line 593
    monitor-enter p0

    .line 594
    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 595
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 596
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-direct {p0, p2}, Lcom/android/server/ThemeService;->postProgress(Ljava/lang/String;)V

    .line 598
    return-void

    .line 596
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private killLaunchers()V
    .locals 11

    .prologue
    .line 535
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 536
    .local v0, am:Landroid/app/ActivityManager;
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 538
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 539
    .local v2, homeIntent:Landroid/content/Intent;
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 543
    .local v5, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 544
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_0

    .line 545
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 546
    .local v6, pkgToStop:Ljava/lang/String;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Force stopping "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for theme change"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Unable to force stop package, did you forget platform signature?"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 554
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgToStop:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private postFinish(ZLjava/lang/String;)V
    .locals 7
    .parameter "isSuccess"
    .parameter "pkgName"

    .prologue
    const/4 v6, 0x0

    .line 570
    monitor-enter p0

    .line 571
    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    .line 572
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    .line 573
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 576
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 577
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .line 579
    .local v3, listener:Landroid/content/res/IThemeChangeListener;
    :try_start_1
    invoke-interface {v3, p1, p2}, Landroid/content/res/IThemeChangeListener;->onFinish(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 580
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #listener:Landroid/content/res/IThemeChangeListener;
    :catch_0
    move-exception v1

    .line 581
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 584
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 587
    if-eqz p1, :cond_1

    .line 588
    iget-object v4, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    :cond_1
    return-void
.end method

.method private postProgress(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 557
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 558
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 559
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .line 561
    .local v3, listener:Landroid/content/res/IThemeChangeListener;
    :try_start_0
    iget v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    invoke-interface {v3, v4, p1}, Landroid/content/res/IThemeChangeListener;->onProgress(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 566
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 567
    return-void
.end method

.method private setCustomLockScreenWallpaper()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 422
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 423
    .local v5, themeCtx:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 424
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, wpPath:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 426
    sget-object v9, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v10, "Not setting lockscreen wp because wallpaper file was not found."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v5           #themeCtx:Landroid/content/Context;
    .end local v7           #wpPath:Ljava/lang/String;
    :goto_0
    return v8

    .line 429
    .restart local v0       #assetManager:Landroid/content/res/AssetManager;
    .restart local v5       #themeCtx:Landroid/content/Context;
    .restart local v7       #wpPath:Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file:///android_asset/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 432
    .local v3, is:Ljava/io/InputStream;
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/util/cm/LockscreenBackgroundUtil;->getWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 433
    .local v6, wallpaperFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 434
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 435
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 438
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 439
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    invoke-virtual {v1, v10, v11, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "lockscreen_background_style"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v8, v9

    .line 447
    goto :goto_0

    .line 440
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v5           #themeCtx:Landroid/content/Context;
    .end local v6           #wallpaperFile:Ljava/io/File;
    .end local v7           #wpPath:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 441
    .local v2, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateAlarms(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    .line 288
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    const-string v1, "alarms"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .locals 11
    .parameter "dirPath"
    .parameter "assetPath"
    .parameter "type"
    .parameter "pi"

    .prologue
    .line 304
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Landroid/content/pm/ThemeUtils;->clearAudibles(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    iget-object v8, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 306
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v8, p3}, Landroid/content/pm/ThemeUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 307
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "There was an error installing the default audio file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v8, 0x0

    .line 354
    :goto_0
    return v8

    .line 310
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 313
    :cond_1
    if-eqz p4, :cond_2

    iget-boolean v8, p4, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v8, :cond_2

    .line 314
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/ThemeService;->updateLegacyAudible(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v8

    goto :goto_0

    .line 321
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 322
    .local v7, themeCtx:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 323
    .local v2, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 328
    .local v1, assetList:[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v8, v1

    if-nez v8, :cond_4

    .line 329
    :cond_3
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Could not find any audio assets"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v8, 0x0

    goto :goto_0

    .line 324
    .end local v1           #assetList:[Ljava/lang/String;
    .end local v2           #assetManager:Landroid/content/res/AssetManager;
    .end local v7           #themeCtx:Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 325
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error getting assets for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v8, 0x0

    goto :goto_0

    .line 335
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #assetList:[Ljava/lang/String;
    .restart local v2       #assetManager:Landroid/content/res/AssetManager;
    .restart local v7       #themeCtx:Landroid/content/Context;
    :cond_4
    const/4 v8, 0x0

    aget-object v0, v1, v8

    .line 336
    .local v0, asset:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_0

    .line 338
    :cond_5
    const/4 v4, 0x0

    .line 339
    .local v4, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 341
    .local v5, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///android_asset/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 343
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .local v6, outFile:Ljava/io/File;
    invoke-static {v4, v6}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 345
    const/16 v8, 0x1e7

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v6, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 346
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v9, p4, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    invoke-static {v8, v6, p3, v9}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 352
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 354
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 347
    .end local v6           #outFile:Ljava/io/File;
    :catch_1
    move-exception v3

    .line 348
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error installing the new audio file for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    const/4 v8, 0x0

    .line 351
    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 352
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 351
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v4}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 352
    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 351
    throw v8
.end method

.method private updateBootAnim()V
    .locals 5

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    .line 276
    const-string v3, "default"

    iget-object v4, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 280
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 281
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/ThemeService;->applyBootAnimation(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v4, "Changing boot animation failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateConfiguration(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 498
    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 501
    .local v4, token:J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 502
    .local v1, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v1, p1}, Lcom/android/server/ThemeService;->createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/List;)Landroid/content/res/CustomTheme$Builder;

    move-result-object v3

    .line 503
    .local v3, themeBuilder:Landroid/content/res/CustomTheme$Builder;
    invoke-virtual {v3}, Landroid/content/res/CustomTheme$Builder;->build()Landroid/content/res/CustomTheme;

    move-result-object v6

    iput-object v6, v1, Landroid/content/res/Configuration;->customTheme:Landroid/content/res/CustomTheme;

    .line 504
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #themeBuilder:Landroid/content/res/CustomTheme$Builder;
    .end local v4           #token:J
    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    .line 505
    .restart local v4       #token:J
    :catch_0
    move-exception v2

    .line 506
    .local v2, e:Landroid/os/RemoteException;
    const/4 v6, 0x0

    .line 508
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private updateFonts()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 231
    sget-object v12, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v12}, Landroid/content/pm/ThemeUtils;->deleteFilesInDir(Ljava/lang/String;)V

    .line 233
    iget-object v12, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const-string v13, "default"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 238
    :try_start_0
    iget-object v12, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 239
    .local v10, themeCtx:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 240
    .local v3, assetManager:Landroid/content/res/AssetManager;
    const-string v12, "fonts"

    invoke-virtual {v3, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 245
    .local v2, assetList:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v12, v2

    if-nez v12, :cond_1

    .line 246
    :cond_0
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v13, "Could not find any font assets"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v10           #themeCtx:Landroid/content/Context;
    :goto_0
    return v11

    .line 241
    :catch_0
    move-exception v4

    .line 242
    .local v4, e:Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "There was an error getting assets  for pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #assetList:[Ljava/lang/String;
    .restart local v3       #assetManager:Landroid/content/res/AssetManager;
    .restart local v10       #themeCtx:Landroid/content/Context;
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .line 252
    .local v1, asset:Ljava/lang/String;
    const/4 v6, 0x0

    .line 253
    .local v6, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 255
    .local v8, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file:///android_asset/fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 256
    new-instance v9, Ljava/io/File;

    sget-object v12, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v9, v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v9, outFile:Ljava/io/File;
    invoke-static {v6, v9}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 258
    const/16 v12, 0x1e7

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v9, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 264
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 251
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 259
    .end local v9           #outFile:Ljava/io/File;
    :catch_1
    move-exception v4

    .line 260
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v12, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "There was an error installing the new fonts for pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 264
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 263
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 264
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 263
    throw v11

    .line 270
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #asset:Ljava/lang/String;
    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v5           #i$:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len$:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v10           #themeCtx:Landroid/content/Context;
    :cond_2
    const-string v11, "sys.refresh_theme"

    const-string v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private updateIcons()V
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLegacyAudible(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .locals 10
    .parameter "dirPath"
    .parameter "type"
    .parameter "pi"

    .prologue
    const/4 v6, 0x0

    .line 358
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v7, :cond_0

    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v7, v7

    if-nez v7, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v6

    .line 364
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 373
    .local v5, themeCtx:Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 378
    :pswitch_0
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    aget-object v7, v7, v6

    iget-object v0, v7, Landroid/content/pm/LegacyThemeInfo;->ringtoneFileName:Ljava/lang/String;

    .line 383
    .local v0, asset:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 385
    const/4 v2, 0x0

    .line 386
    .local v2, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 388
    .local v3, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file:///android_asset/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 389
    new-instance v4, Ljava/io/File;

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v4, outFile:Ljava/io/File;
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 391
    const/16 v7, 0x1e7

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v4, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 392
    iget-object v7, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v8, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/content/pm/LegacyThemeInfo;->name:Ljava/lang/String;

    invoke-static {v7, v4, p2, v8}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 397
    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 398
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 400
    const/4 v6, 0x1

    goto :goto_0

    .line 365
    .end local v0           #asset:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #outFile:Ljava/io/File;
    .end local v5           #themeCtx:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There was an error getting assets for pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 375
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #themeCtx:Landroid/content/Context;
    :pswitch_1
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    aget-object v7, v7, v6

    iget-object v0, v7, Landroid/content/pm/LegacyThemeInfo;->notificationFileName:Ljava/lang/String;

    .line 376
    .restart local v0       #asset:Ljava/lang/String;
    goto :goto_1

    .line 393
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 394
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There was an error installing the new audio file for pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 398
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 397
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 398
    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 397
    throw v6

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLockscreen()Z
    .locals 4

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, success:Z
    const-string v1, "default"

    iget-object v2, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_background_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    const/4 v0, 0x1

    .line 413
    :goto_0
    if-eqz v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    :cond_0
    return v0

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ThemeService;->setCustomLockScreenWallpaper()Z

    move-result v0

    goto :goto_0
.end method

.method private updateNotifications(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    .line 293
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    const-string v1, "notifications"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private updateProvider(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 206
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "value"

    iget-object v6, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    .local v0, component:Ljava/lang/String;
    const-string v4, "key=?"

    .line 211
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/ThemesContract$MixnMatchColumns;->componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .line 212
    .local v2, selectionArgs:[Ljava/lang/String;
    aget-object v5, v2, v7

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0           #component:Ljava/lang/String;
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateRingtones(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    .line 298
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    const-string v1, "ringtones"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private updateWallpaper()Z
    .locals 14

    .prologue
    .line 451
    const-string v3, "pkg_name= ?"

    .line 452
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 453
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 455
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 457
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 460
    :catch_0
    move-exception v7

    .line 461
    .local v7, e:Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_1

    .line 464
    .end local v7           #e:Ljava/io/IOException;
    :cond_0
    const/4 v8, 0x0

    .line 466
    .local v8, in:Ljava/io/InputStream;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 467
    .local v12, themeContext:Landroid/content/Context;
    const-string v0, "is_legacy_theme"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 469
    .local v9, isLegacyTheme:Z
    :goto_2
    if-nez v9, :cond_3

    .line 470
    const-string v0, "wallpaper_uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 471
    .local v13, wallpaper:Ljava/lang/String;
    invoke-static {v13}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-static {v12, v13}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 476
    :goto_3
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    .end local v13           #wallpaper:Ljava/lang/String;
    :goto_4
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 467
    .end local v9           #isLegacyTheme:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 474
    .restart local v9       #isLegacyTheme:Z
    .restart local v13       #wallpaper:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_3

    .line 478
    .end local v13           #wallpaper:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 479
    .local v11, pm:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 480
    .local v10, pi:Landroid/content/pm/PackageInfo;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v0, :cond_4

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 481
    invoke-static {v12}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, v10, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 487
    .end local v9           #isLegacyTheme:Z
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #themeContext:Landroid/content/Context;
    :catch_1
    move-exception v7

    .line 488
    .local v7, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 490
    .end local v7           #e:Ljava/lang/Exception;
    :goto_5
    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_1

    .line 484
    .restart local v9       #isLegacyTheme:Z
    .restart local v10       #pi:Landroid/content/pm/PackageInfo;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v12       #themeContext:Landroid/content/Context;
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 490
    .end local v9           #isLegacyTheme:Z
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #themeContext:Landroid/content/Context;
    :catchall_0
    move-exception v0

    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method


# virtual methods
.method public getProgress(Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    monitor-enter p0

    .line 639
    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    monitor-exit p0

    return v0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isThemeApplying(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    if-nez p1, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/server/ThemeService;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 612
    return-void
.end method

.method public requestThemeChange(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 616
    .local p2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 620
    new-instance v1, Lcom/android/server/ThemeService$ThemeData;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ThemeService$ThemeData;-><init>(Lcom/android/server/ThemeService;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    return-void
.end method

.method public requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 605
    return-void
.end method
