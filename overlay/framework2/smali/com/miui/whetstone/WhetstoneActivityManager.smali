.class public abstract Lcom/miui/whetstone/WhetstoneActivityManager;
.super Ljava/lang/Object;
.source "WhetstoneActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "whetstone.activity"

.field private static ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .prologue
    .line 18
    sput-object p0, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object p0
.end method

.method public static checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "threshold"    # J

    .prologue
    .line 94
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 95
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 53
    return-void
.end method

.method public static getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 70
    const-wide/16 v1, 0x0

    .line 71
    .local v1, "totoalMemory":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v3, :cond_0

    .line 73
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v3}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 78
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .locals 4

    .prologue
    .line 37
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v2, :cond_0

    .line 38
    const-string v2, "whetstone.activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 40
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 41
    new-instance v0, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V

    .line 42
    .local v0, "death":Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v2

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 2
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
    .line 82
    .local p0, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 83
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "names"    # [Landroid/content/ComponentName;

    .prologue
    .line 56
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkService()V

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v2, :cond_0

    .line 60
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v2, p1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->setPerformanceComponents([Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
