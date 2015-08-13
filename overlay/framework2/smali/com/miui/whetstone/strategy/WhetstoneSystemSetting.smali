.class public Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
.super Ljava/lang/Object;
.source "WhetstoneSystemSetting.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    .line 18
    return-void
.end method

.method private finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "ret"    # Ljava/lang/Boolean;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "finish":Z
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->mWhetstoneActivityManagerService:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 44
    const/4 v0, 0x1

    .line 47
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public finishIsStartPorcessAllowedByBroadcast(ILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "callingPid"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "name"    # Landroid/content/ComponentName;
    .param p4, "ret"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    .line 22
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 29
    :goto_0
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    .local v0, "finish":Z
    invoke-direct {p0, p1, p3, p4}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    .line 29
    goto :goto_0
.end method

.method public finishstartServiceAllowed(ILandroid/content/ComponentName;IZZ)Z
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "intentFlags"    # I
    .param p4, "whileRestarting"    # Z
    .param p5, "ret"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "finish":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 56
    const/4 p5, 0x1

    .line 57
    const/4 v1, 0x1

    .line 63
    :goto_0
    return v1

    .line 60
    :cond_0
    if-eqz p2, :cond_1

    .line 61
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->finishCommonAllowed(ILandroid/content/ComponentName;Ljava/lang/Boolean;)Z

    move-result v0

    :cond_1
    move v1, v0

    .line 63
    goto :goto_0
.end method

.method public finishstartServiceAllowed(ILandroid/content/Intent;Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "callingPid"    # I
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "ret"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 34
    return v0
.end method
