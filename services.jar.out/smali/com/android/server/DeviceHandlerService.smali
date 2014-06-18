.class public final Lcom/android/server/DeviceHandlerService;
.super Landroid/os/Binder;
.source "DeviceHandlerService.java"

# interfaces
.implements Lcom/android/internal/os/IDeviceHandler;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceDockBatteryHandler:Lcom/android/internal/os/DeviceDockBatteryHandler;

.field private mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/DeviceHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DeviceHandlerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceHandlerService;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    iput-object v0, p0, Lcom/android/server/DeviceHandlerService;->mDeviceDockBatteryHandler:Lcom/android/internal/os/DeviceDockBatteryHandler;

    iput-object p1, p0, Lcom/android/server/DeviceHandlerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/DeviceHandlerService;->registerHandlers()V

    return-void
.end method

.method private getHandler(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "classLoader"
    .parameter "type"
    .parameter "handlerClass"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/DeviceHandlerService;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, handler:Ljava/lang/Object;
    sget-object v4, Lcom/android/server/DeviceHandlerService;->TAG:Ljava/lang/String;

    const-string v5, "Instantiated %s handler class %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #handler:Ljava/lang/Object;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/DeviceHandlerService;->TAG:Ljava/lang/String;

    const-string v5, "Could not instantiate %s handler class %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p2, v6, v8

    aput-object p3, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private registerHandlers()V
    .locals 8

    .prologue
    iget-object v5, p0, Lcom/android/server/DeviceHandlerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1040098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, deviceHandlersLib:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/DeviceHandlerService;->TAG:Ljava/lang/String;

    const-string v6, "No device specific handler lib was defined."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ldalvik/system/DexClassLoader;

    new-instance v5, Landroid/content/ContextWrapper;

    iget-object v6, p0, Lcom/android/server/DeviceHandlerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v1, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v0, classLoader:Ljava/lang/ClassLoader;
    const v5, 0x1040099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, handlerClass:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "key"

    invoke-direct {p0, v0, v5, v2}, Lcom/android/server/DeviceHandlerService;->getHandler(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/DeviceKeyHandler;

    iput-object v5, p0, Lcom/android/server/DeviceHandlerService;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    :cond_2
    const v5, 0x111005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .local v3, hasDockBattery:Z
    if-eqz v3, :cond_0

    const v5, 0x1040096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "dock battery"

    invoke-direct {p0, v0, v5, v2}, Lcom/android/server/DeviceHandlerService;->getHandler(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/DeviceDockBatteryHandler;

    iput-object v5, p0, Lcom/android/server/DeviceHandlerService;->mDeviceDockBatteryHandler:Lcom/android/internal/os/DeviceDockBatteryHandler;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceDockBatteryHandler()Lcom/android/internal/os/DeviceDockBatteryHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceHandlerService;->mDeviceDockBatteryHandler:Lcom/android/internal/os/DeviceDockBatteryHandler;

    return-object v0
.end method

.method public getDeviceKeyHandler()Lcom/android/internal/os/DeviceKeyHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceHandlerService;->mDeviceKeyHandler:Lcom/android/internal/os/DeviceKeyHandler;

    return-object v0
.end method
