.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# static fields
.field public static final SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final TAG:Ljava/lang/String; = "whetstone.activity"


# instance fields
.field private mAM:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mPidsSelfLocked:Landroid/util/SparseArray;

.field private mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    .line 36
    :try_start_0
    const-string v3, "android.os.ServiceManager"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/miui/whetstone/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 39
    .local v2, "getService":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "activity"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iput-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 43
    :goto_0
    const/4 v1, 0x0

    .line 44
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_2
    const-string v3, "com.android.server.am.ActivityManagerService"

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mPidsSelfLocked"

    invoke-static {v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    iput-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 57
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_3
    const-string v3, "com.android.server.am.ExtraActivityManagerService"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    .line 58
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v4, "scheduleDestroyActivities"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/miui/whetstone/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    .line 61
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 62
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 40
    .restart local v2    # "getService":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "getService":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    .line 53
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    .line 168
    return-void
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "threshold"    # J

    .prologue
    .line 192
    invoke-static {p1, p2, p3, p4}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 193
    return-void
.end method

.method public distoryActivity(I)Z
    .locals 7
    .param p1, "pid"    # I

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 152
    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "whetstone"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    const/4 v1, 0x1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .locals 10
    .param p1, "pid"    # I

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 72
    .local v4, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7

    .line 73
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 74
    .local v5, "processRecord":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "com.android.server.am.ProcessRecord"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 83
    :goto_0
    :try_start_2
    const-string v6, "info"

    invoke-static {v0, v6}, Lcom/miui/whetstone/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 84
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 85
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    return-object v4

    .line 79
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e1":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 87
    .end local v2    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "processRecord":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 89
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "processRecord":Ljava/lang/Object;
    :catch_2
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public getSystemPid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTrimMemory(II)Z
    .locals 8
    .param p1, "pid"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string v5, "scheduleTrimMemory"

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/miui/whetstone/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 126
    .local v1, "scheduleTrimMemory":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 128
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    .end local v1    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 129
    .restart local v1    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "scheduleTrimMemory":Ljava/lang/reflect/Method;
    :cond_1
    move v2, v3

    .line 139
    goto :goto_0
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # [Landroid/content/ComponentName;

    .prologue
    .line 177
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .locals 0
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
    .line 187
    .local p1, "thresholds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 188
    return-void
.end method
