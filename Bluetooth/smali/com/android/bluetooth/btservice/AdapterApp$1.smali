.class Lcom/android/bluetooth/btservice/AdapterApp$1;
.super Lmiui/external/ApplicationDelegate;
.source "AdapterApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/AdapterApp;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterApp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterApp;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterApp$1;->this$0:Lcom/android/bluetooth/btservice/AdapterApp;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    invoke-static {p0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    return-void
.end method
