.class public Landroid/service/pie/PieManager;
.super Ljava/lang/Object;
.source "PieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pie/PieManager$1;,
        Landroid/service/pie/PieManager$PieActivationListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PieManager"

.field private static sInstance:Landroid/service/pie/PieManager;


# instance fields
.field private final mPs:Landroid/service/pie/IPieService;


# direct methods
.method private constructor <init>(Landroid/service/pie/IPieService;)V
    .locals 0
    .parameter "ps"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/pie/PieManager;->mPs:Landroid/service/pie/IPieService;

    return-void
.end method

.method public static getInstance()Landroid/service/pie/PieManager;
    .locals 4

    .prologue
    const-class v2, Landroid/service/pie/PieManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/service/pie/PieManager;->sInstance:Landroid/service/pie/PieManager;

    if-nez v1, :cond_0

    const-string v1, "pieservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    new-instance v1, Landroid/service/pie/PieManager;

    invoke-static {v0}, Landroid/service/pie/IPieService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/pie/IPieService;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/service/pie/PieManager;-><init>(Landroid/service/pie/IPieService;)V

    sput-object v1, Landroid/service/pie/PieManager;->sInstance:Landroid/service/pie/PieManager;

    :cond_0
    sget-object v1, Landroid/service/pie/PieManager;->sInstance:Landroid/service/pie/PieManager;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isPresent()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/pie/PieManager;->mPs:Landroid/service/pie/IPieService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPieActivationListener(Landroid/service/pie/PieManager$PieActivationListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/service/pie/PieManager;->mPs:Landroid/service/pie/IPieService;

    #getter for: Landroid/service/pie/PieManager$PieActivationListener;->mDelegator:Landroid/service/pie/PieManager$PieActivationListener$Delegator;
    invoke-static {p1}, Landroid/service/pie/PieManager$PieActivationListener;->access$200(Landroid/service/pie/PieManager$PieActivationListener;)Landroid/service/pie/PieManager$PieActivationListener$Delegator;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/pie/IPieService;->registerPieActivationListener(Landroid/service/pie/IPieActivationListener;)Landroid/service/pie/IPieHostCallback;

    move-result-object v0

    .local v0, callback:Landroid/service/pie/IPieHostCallback;
    invoke-virtual {p1, v0}, Landroid/service/pie/PieManager$PieActivationListener;->setHostCallback(Landroid/service/pie/IPieHostCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v0           #callback:Landroid/service/pie/IPieHostCallback;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "PieManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set pie activation listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updatePieActivationListener(Landroid/service/pie/PieManager$PieActivationListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "positions"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/service/pie/PieManager;->mPs:Landroid/service/pie/IPieService;

    #getter for: Landroid/service/pie/PieManager$PieActivationListener;->mDelegator:Landroid/service/pie/PieManager$PieActivationListener$Delegator;
    invoke-static {p1}, Landroid/service/pie/PieManager$PieActivationListener;->access$200(Landroid/service/pie/PieManager$PieActivationListener;)Landroid/service/pie/PieManager$PieActivationListener$Delegator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/pie/PieManager$PieActivationListener$Delegator;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/service/pie/IPieService;->updatePieActivationListener(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PieManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update pie activation listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
