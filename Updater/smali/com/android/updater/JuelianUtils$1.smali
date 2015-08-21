.class Lcom/android/updater/JuelianUtils$1;
.super Ljava/lang/Object;
.source "JuelianUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/JuelianUtils;->setPostUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/JuelianUtils;


# direct methods
.method constructor <init>(Lcom/android/updater/JuelianUtils;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/JuelianUtils$1;->this$0:Lcom/android/updater/JuelianUtils;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/updater/JuelianUtils$1;->this$0:Lcom/android/updater/JuelianUtils;

    # getter for: Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/updater/JuelianUtils;->access$0(Lcom/android/updater/JuelianUtils;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/updater/JuelianUtils$1;->this$0:Lcom/android/updater/JuelianUtils;

    # getter for: Lcom/android/updater/JuelianUtils;->mVersion:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/updater/JuelianUtils;->access$1(Lcom/android/updater/JuelianUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/updater/JuelianUtils;->getNewVersionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    return-void
.end method
