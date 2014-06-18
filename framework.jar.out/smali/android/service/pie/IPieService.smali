.class public interface abstract Landroid/service/pie/IPieService;
.super Ljava/lang/Object;
.source "IPieService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pie/IPieService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerPieActivationListener(Landroid/service/pie/IPieActivationListener;)Landroid/service/pie/IPieHostCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePieActivationListener(Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
