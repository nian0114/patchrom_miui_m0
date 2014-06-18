.class Lcom/android/server/DevicePolicyManagerService$SELinuxPolicyDescription;
.super Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SELinuxPolicyDescription"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/server/DevicePolicyManagerService$PolicyFileDescription;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method doPolicyReload()Z
    .locals 2

    .prologue
    const-string v0, "selinux.reload_policy"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method isPolicyAdmin(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;)Z
    .locals 1
    .parameter "admin"

    .prologue
    iget-boolean v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->isSELinuxAdmin:Z

    return v0
.end method
