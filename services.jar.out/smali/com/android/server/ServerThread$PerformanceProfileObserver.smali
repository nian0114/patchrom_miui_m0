.class Lcom/android/server/ServerThread$PerformanceProfileObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceProfileObserver"
.end annotation


# instance fields
.field private final mPropDef:Ljava/lang/String;

.field private final mPropName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ServerThread;


# direct methods
.method public constructor <init>(Lcom/android/server/ServerThread;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "ctx"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/ServerThread$PerformanceProfileObserver;->this$0:Lcom/android/server/ServerThread;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 130
    const v0, 0x10400e7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServerThread$PerformanceProfileObserver;->mPropName:Ljava/lang/String;

    .line 132
    const v0, 0x10400e8

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ServerThread$PerformanceProfileObserver;->mPropDef:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/server/ServerThread$PerformanceProfileObserver;->setSystemSetting()V

    .line 138
    return-void
.end method

.method setSystemSetting()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/ServerThread$PerformanceProfileObserver;->this$0:Lcom/android/server/ServerThread;

    iget-object v1, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "performance_profile"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, perfProfile:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/ServerThread$PerformanceProfileObserver;->mPropDef:Ljava/lang/String;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServerThread$PerformanceProfileObserver;->mPropName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
