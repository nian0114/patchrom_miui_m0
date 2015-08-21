.class public Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;
.super Lmiui/app/Activity;
.source "BluetoothOppLiveFolder.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://com.android.bluetooth.opp/live_folders/received"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private static createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.OPEN"

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v1, "android.intent.extra.livefolder.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "android.intent.extra.livefolder.ICON"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/4 v2, -0x1

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->CONTENT_URI:Landroid/net/Uri;

    const v4, 0x7f06007d

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020009

    invoke-static {p0, v3, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->createLiveFolder(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->setResult(ILandroid/content/Intent;)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->finish()V

    .line 66
    return-void

    .line 62
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppLiveFolder;->setResult(I)V

    goto :goto_0
.end method
