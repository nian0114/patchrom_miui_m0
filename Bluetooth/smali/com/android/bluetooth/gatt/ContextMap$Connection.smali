.class Lcom/android/bluetooth/gatt/ContextMap$Connection;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connection"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field appId:I

.field connId:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V
    .locals 0
    .param p2, "connId"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "appId"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    .line 49
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    .line 51
    return-void
.end method
