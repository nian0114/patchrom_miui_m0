.class public abstract Lcom/miui/whetstone/WhetstoneManager;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneManager$PermissionFile;,
        Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/IWhetstone;

    .prologue
    .line 15
    sput-object p0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 50
    return-void
.end method

.method public static deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .locals 3
    .param p0, "config"    # Lcom/miui/whetstone/WhetstoneConfig;

    .prologue
    .line 312
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 316
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationThread(I)Landroid/os/IBinder;
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 127
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 131
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getApplicationThread(I)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 4

    .prologue
    .line 34
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_0

    .line 35
    const-string v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 37
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 38
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 39
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSmartConfigLevel()I
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 290
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getSmartConfigLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstoneLeve()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    return v0
.end method

.method public static getWhetstoneLeve(I)I
    .locals 3
    .param p0, "defValue"    # I

    .prologue
    .line 94
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 95
    move v1, p0

    .line 96
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getWhetstoneLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "applicationThread"    # Landroid/os/IBinder;

    .prologue
    .line 113
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 117
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "mode"    # I

    .prologue
    .line 203
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 207
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 3
    .param p0, "packageURI"    # Landroid/net/Uri;
    .param p1, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p2, "flags"    # I

    .prologue
    .line 229
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 233
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBitmapCacheNeeded()Z
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 56
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 58
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInCharging()Z
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 303
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->isInCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOPENGLDisableNeeded()Z
    .locals 4

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 70
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 72
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "database"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 220
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static screenShot(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 190
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "ret":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 194
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->screenShot(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWhetstoneLeve(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 82
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 83
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->setWhetstoneLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 141
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 142
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v7

    .line 146
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 7
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 256
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/whetstone/WhetstoneManager;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 258
    return-void
.end method

.method public static wifiSmartConfigMacAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 154
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 155
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p5, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    .line 160
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 9
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "result"    # Landroid/os/IBinder;

    .prologue
    .line 243
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 244
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v8

    .line 249
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigStop()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 167
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 171
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigSupport()Z
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 181
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigSupport()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 274
    const/4 v7, 0x0

    .line 275
    .local v7, "ret":Ljava/lang/String;
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 282
    :cond_0
    :goto_0
    return-object v7

    .line 278
    :catch_0
    move-exception v6

    .line 279
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 262
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 263
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v7

    .line 267
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
