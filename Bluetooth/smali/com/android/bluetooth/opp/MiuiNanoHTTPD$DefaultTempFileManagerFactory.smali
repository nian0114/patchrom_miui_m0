.class Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManagerFactory;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManagerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultTempFileManagerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManagerFactory;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
    .param p2, "x1"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManagerFactory;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$TempFileManager;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$DefaultTempFileManager;-><init>()V

    return-object v0
.end method
