.class Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;
.super Ljava/lang/Object;
.source "WhetstoneActivityManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhetstoneManagerDeath"
.end annotation


# instance fields
.field private mToken:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)V
    .locals 0
    .param p1, "token"    # Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;->mToken:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 26
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    # setter for: Lcom/miui/whetstone/WhetstoneActivityManager;->ws:Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneActivityManager;->access$002(Lcom/miui/whetstone/server/IWhetstoneActivityManager;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    .line 30
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;->mToken:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneActivityManager$WhetstoneManagerDeath;->mToken:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-interface {v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 33
    :cond_0
    return-void
.end method
