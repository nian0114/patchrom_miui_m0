.class Lcom/android/server/power/DisplayPowerController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;-><init>(Lcom/android/internal/policy/IKeyguardService;)V

    # setter for: Lcom/android/server/power/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$002(Lcom/android/server/power/DisplayPowerController;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$1;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$002(Lcom/android/server/power/DisplayPowerController;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    return-void
.end method
