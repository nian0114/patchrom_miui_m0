.class public interface abstract Lcom/miui/whetstone/IWhetstoneResult;
.super Ljava/lang/Object;
.source "IWhetstoneResult.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final TRACSACTION_onResult:I = 0x1

.field public static final descriptor:Ljava/lang/String; = "com.miui.whetstone.IWhetstoneResult"


# virtual methods
.method public abstract onResult(Lcom/miui/whetstone/WhetstoneResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
