.class public interface abstract Lcom/miui/whetstone/app/IWhetstoneApplicationThread;
.super Ljava/lang/Object;
.source "IWhetstoneApplicationThread.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DUMP_MEM_INFO_TRANSACTION:I = 0x1

.field public static final descriptor:Ljava/lang/String; = "com.miui.whetstone.app.IWhetstoneApplicationThread"


# virtual methods
.method public abstract dumpMemInfo([Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
