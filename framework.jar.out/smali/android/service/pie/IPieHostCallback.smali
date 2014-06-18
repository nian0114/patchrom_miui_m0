.class public interface abstract Landroid/service/pie/IPieHostCallback;
.super Ljava/lang/Object;
.source "IPieHostCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pie/IPieHostCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract gainTouchFocus(Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract restoreListenerState()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
