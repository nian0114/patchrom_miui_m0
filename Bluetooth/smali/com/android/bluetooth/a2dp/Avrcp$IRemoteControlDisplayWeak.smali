.class Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IRemoteControlDisplayWeak"
.end annotation


# instance fields
.field private mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 206
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 242
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 243
    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 244
    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 246
    :cond_0
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 237
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 3
    .param p1, "clientGeneration"    # I
    .param p2, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 252
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 253
    const/16 v2, 0x68

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 256
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 261
    return-void
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 221
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 222
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 224
    :cond_0
    return-void
.end method

.method public setPlaybackState(IIJJF)V
    .locals 3
    .param p1, "generationId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 212
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 213
    const/16 v1, 0x64

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p5, p6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 216
    :cond_0
    return-void
.end method

.method public setTransportControlInfo(III)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "flags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 229
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 230
    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 233
    :cond_0
    return-void
.end method
