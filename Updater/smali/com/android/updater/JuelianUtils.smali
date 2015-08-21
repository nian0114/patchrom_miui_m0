.class public Lcom/android/updater/JuelianUtils;
.super Ljava/lang/Object;
.source "JuelianUtils.java"


# static fields
.field private static ftpPath:Ljava/lang/String;


# instance fields
.field private ErrorTips:Ljava/lang/String;

.field private TextEncode:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-string v0, "mijl.changelog.ftpPath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/updater/JuelianUtils;->ftpPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/android/updater/JuelianUtils;->TextEncode:Ljava/lang/String;

    .line 24
    const-string v0, "<html><body><center><h2>\u52a0\u8f7d\u65e5\u5fd7\u65f6\u51fa\u73b0\u9519\u8bef,\u8bf7\u91cd\u65b0\u5c1d\u8bd5\u52a0\u8f7d\uff01<h2></center></body></html>"

    iput-object v0, p0, Lcom/android/updater/JuelianUtils;->ErrorTips:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;

    .line 28
    iput-object p2, p0, Lcom/android/updater/JuelianUtils;->mVersion:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/android/updater/JuelianUtils;->setPostUrl()V

    .line 30
    invoke-virtual {p0}, Lcom/android/updater/JuelianUtils;->setWebViewClient()V

    .line 31
    invoke-virtual {p0}, Lcom/android/updater/JuelianUtils;->setWebViewSettings()V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/android/updater/JuelianUtils;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/updater/JuelianUtils;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/updater/JuelianUtils;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/updater/JuelianUtils;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/updater/JuelianUtils;->ErrorTips:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/updater/JuelianUtils;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/updater/JuelianUtils;->TextEncode:Ljava/lang/String;

    return-object v0
.end method

.method public static getNewVersionUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/updater/JuelianUtils;->ftpPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.product.mod_device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "str":Ljava/lang/String;
    const-string v1, "mijl-->"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v0
.end method

.method public static getOldVersionUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/updater/JuelianUtils;->ftpPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.product.mod_device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.version.incremental"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "str":Ljava/lang/String;
    const-string v1, "mijl-->"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "old url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v0
.end method


# virtual methods
.method public setPostUrl()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/updater/JuelianUtils$1;

    invoke-direct {v1, p0}, Lcom/android/updater/JuelianUtils$1;-><init>(Lcom/android/updater/JuelianUtils;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public setWebViewClient()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/updater/JuelianUtils$2;

    invoke-direct {v1, p0}, Lcom/android/updater/JuelianUtils$2;-><init>(Lcom/android/updater/JuelianUtils;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 82
    return-void
.end method

.method public setWebViewSettings()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 37
    iget-object v1, p0, Lcom/android/updater/JuelianUtils;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 40
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    iget-object v1, p0, Lcom/android/updater/JuelianUtils;->TextEncode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 45
    return-void
.end method
