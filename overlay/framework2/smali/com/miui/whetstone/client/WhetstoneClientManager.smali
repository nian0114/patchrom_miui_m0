.class public abstract Lcom/miui/whetstone/client/WhetstoneClientManager;
.super Ljava/lang/Object;
.source "WhetstoneClientManager.java"


# static fields
.field private static final BOARD_PERFORMANCE_SUPPORT:Z

.field private static CACHAED_STATISTICS_SUPPORT:Z = false

.field private static CHECK_APP_MEMORY_SUPPORT:Z = false

.field private static final DEBUG:Z = false

.field private static final POWER_PROFILE_CONFIG:Ljava/lang/String; = "persist.sys.aries.power_profile"

.field private static final POWER_PROFILE_PERFORMANCE:Ljava/lang/String; = "high"

.field private static RED_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "WhetstoneClientManager"

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/miui/whetstone/IWhetstoneClient;

.field private static mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

.field private static mThresholds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

.field private static sAndroidCachePss:J

.field private static sCallingPid:I

.field private static sPerformanceEnable:Z

.field private static sPerformanceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static sPowerProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    const-string v0, "feature_red_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    .line 44
    const-string v0, "feature_cached_statistics_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 185
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyReceiveUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    .line 295
    const-string v0, "feature_check_app_memory_suport"

    invoke-static {v0, v4}, Lmiui/util/MiuiFeatureUtils;->isSystemFeatureSupported(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CHECK_APP_MEMORY_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addComponment([Landroid/content/ComponentName;)Z
    .locals 7
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .prologue
    .line 194
    sget-object v5, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 195
    .local v4, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/ComponentName;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 196
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_0
    sget-object v6, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 199
    :try_start_0
    sput-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 200
    monitor-exit v6

    .line 201
    const/4 v5, 0x1

    return v5

    .line 200
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "threshold"    # J

    .prologue
    .line 298
    sget-boolean v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->CHECK_APP_MEMORY_SUPPORT:Z

    if-nez v4, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 302
    .local v3, "valueObject":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 306
    .local v2, "value":I
    long-to-int v4, p2

    div-int/lit16 v1, v4, 0x400

    .line 307
    .local v1, "pss":I
    if-le v1, v2, :cond_0

    if-eqz v2, :cond_0

    .line 308
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v4, :cond_2

    .line 310
    :try_start_0
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v4, p0, p1, v1}, Lcom/miui/whetstone/IWhetstoneClient;->notifyApplicationOver(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_2
    :goto_1
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static doPerformanceLam()V
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "persist.sys.aries.power_profile"

    const-string v1, "middle"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    .line 262
    :cond_0
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "persist.sys.aries.power_profile"

    const-string v1, "high"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1
    return-void
.end method

.method private static doResumeLam()V
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->BOARD_PERFORMANCE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "persist.sys.aries.power_profile"

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPowerProfile:Ljava/lang/String;

    .line 253
    :cond_0
    return-void
.end method

.method public static getEmptyProcTotalMemoryInfo()J
    .locals 3

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .local v0, "totalMemory":J
    sget-boolean v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return-wide v0

    .line 68
    :cond_0
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 69
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/miui/whetstone/IWhetstoneClient;
    .param p2, "whetstoneAM"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 46
    sput-object p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    .line 47
    sput-object p1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    .line 48
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;-><init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    sput-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    .line 49
    sput-object p2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mWhetstoneAM:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    .line 51
    return-void
.end method

.method public static isAnimationEnable()Z
    .locals 2

    .prologue
    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;I)Z

    move-result v0

    return v0
.end method

.method public static isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;I)Z

    move-result v0

    return v0
.end method

.method public static isAnimationEnable(Landroid/view/WindowManagerPolicy$WindowState;I)Z
    .locals 1
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "transit"    # I

    .prologue
    .line 273
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotificationAllowed(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I

    .prologue
    .line 161
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    const/4 v1, 0x1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    const/4 v1, 0x1

    .line 165
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v2, :cond_0

    .line 167
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstoneClient;->isNotificationAllowed(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isStartPorcessAllowedByBroadcast(ILjava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "callingPid"    # I
    .param p1, "callPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 82
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, p2, p3, v3}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishIsStartPorcessAllowedByBroadcast(ILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    :cond_2
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v2, :cond_0

    .line 87
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v2, p1, p2, p3}, Lcom/miui/whetstone/IWhetstoneClient;->isStartPorcessAllowedByBroadcastLocked(Ljava/lang/String;Landroid/content/Intent;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static prepareAppTransitionLam(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "realActivity"    # Landroid/content/ComponentName;
    .param p1, "realActivity2"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 217
    sget-boolean v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->RED_SUPPORT:Z

    if-nez v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    if-eqz p1, :cond_0

    .line 228
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const/4 v3, 0x1

    sput-boolean v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 231
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doPerformanceLam()V

    move v1, v2

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceEnable:Z

    .line 235
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->doResumeLam()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCachedPidLam(IIJ)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "pid"    # I
    .param p2, "lastPss"    # J

    .prologue
    .line 54
    sget-boolean v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->CACHAED_STATISTICS_SUPPORT:Z

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    if-nez p0, :cond_1

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    .line 60
    :cond_1
    sget-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    add-long/2addr v0, p2

    sput-wide v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sAndroidCachePss:J

    goto :goto_0
.end method

.method public static setCallingProcessPid(I)V
    .locals 0
    .param p0, "pid"    # I

    .prologue
    .line 179
    sput p0, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    .line 180
    return-void
.end method

.method public static setComponment([Landroid/content/ComponentName;)Z
    .locals 7
    .param p0, "comps"    # [Landroid/content/ComponentName;

    .prologue
    .line 205
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 206
    .local v4, "pset":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/ComponentName;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 207
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_0
    sget-object v6, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    monitor-enter v6

    .line 210
    :try_start_0
    sput-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->sPerformanceSet:Ljava/util/HashSet;

    .line 211
    monitor-exit v6

    .line 212
    const/4 v5, 0x1

    return v5

    .line 211
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static setForegroundProcess(ILjava/lang/String;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstoneClient;->setForegroundProcess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startServiceAllowed(Landroid/content/ComponentName;IZ)Z
    .locals 8
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "intentFlags"    # I
    .param p2, "whileRestarting"    # Z

    .prologue
    .line 138
    const/4 v5, 0x1

    .line 139
    .local v5, "ret":Z
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 143
    :cond_0
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishstartServiceAllowed(ILandroid/content/ComponentName;IZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    .line 144
    goto :goto_0

    .line 146
    :cond_1
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v0, :cond_2

    .line 148
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v7, "service":Landroid/content/Intent;
    invoke-virtual {v7, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    sget v1, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    invoke-interface {v0, v1, v7}, Lcom/miui/whetstone/IWhetstoneClient;->startServiceAllowedLocked(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v7    # "service":Landroid/content/Intent;
    :cond_2
    :goto_1
    move v0, v5

    .line 156
    goto :goto_0

    .line 152
    :catch_0
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static startServiceAllowed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-static {}, Lcom/miui/whetstone/app/WhetstoneAppManager;->isEnable()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    const/4 v1, 0x1

    .line 103
    .local v1, "ret":Z
    if-nez p1, :cond_2

    move v1, v2

    .line 105
    goto :goto_0

    .line 108
    :cond_2
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    sget v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishstartServiceAllowed(ILandroid/content/Intent;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    :cond_3
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    if-eqz v2, :cond_0

    .line 114
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/client/WhetstoneClientManager;->mService:Lcom/miui/whetstone/IWhetstoneClient;

    sget v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->sCallingPid:I

    invoke-interface {v2, v3, p1}, Lcom/miui/whetstone/IWhetstoneClient;->startServiceAllowedLocked(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 7
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
    .line 286
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    monitor-enter v4

    .line 287
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    .local v1, "threshold":Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    const/4 v5, 0x2

    if-gt v3, v5, :cond_0

    .line 290
    sget-object v3, Lcom/miui/whetstone/client/WhetstoneClientManager;->mThresholds:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "threshold":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    return-void
.end method
