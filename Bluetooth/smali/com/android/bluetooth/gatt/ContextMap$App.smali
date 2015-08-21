.class Lcom/android/bluetooth/gatt/ContextMap$App;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "App"
.end annotation


# instance fields
.field callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field id:I

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .local p3, "callback":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    .line 75
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 5
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 83
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to link deathRecipient for app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method unlinkToDeath()V
    .locals 5

    .prologue
    .line 95
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v2, :cond_0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unlink deathRecipient for app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
