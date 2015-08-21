.class interface abstract Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;
.super Ljava/lang/Object;
.source "MiuiHttpFileServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiHttpFileServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResponseListener"
.end annotation


# virtual methods
.method public abstract onTransferFinished(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;)V
.end method

.method public abstract onTransferredBytes(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;J)V
.end method
