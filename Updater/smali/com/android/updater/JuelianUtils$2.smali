.class Lcom/android/updater/JuelianUtils$2;
.super Landroid/webkit/WebViewClient;
.source "JuelianUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/JuelianUtils;->setWebViewClient()V
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
    iput-object p1, p0, Lcom/android/updater/JuelianUtils$2;->this$0:Lcom/android/updater/JuelianUtils;

    .line 60
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v0

    if-nez v0, :cond_15

    .line 71
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 73
    :cond_15
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/updater/JuelianUtils$2;->this$0:Lcom/android/updater/JuelianUtils;

    # getter for: Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/android/updater/JuelianUtils;->access$0(Lcom/android/updater/JuelianUtils;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/updater/JuelianUtils$2;->this$0:Lcom/android/updater/JuelianUtils;

    # getter for: Lcom/android/updater/JuelianUtils;->ErrorTips:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/updater/JuelianUtils;->access$2(Lcom/android/updater/JuelianUtils;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    iget-object v4, p0, Lcom/android/updater/JuelianUtils$2;->this$0:Lcom/android/updater/JuelianUtils;

    # getter for: Lcom/android/updater/JuelianUtils;->TextEncode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/updater/JuelianUtils;->access$3(Lcom/android/updater/JuelianUtils;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method
