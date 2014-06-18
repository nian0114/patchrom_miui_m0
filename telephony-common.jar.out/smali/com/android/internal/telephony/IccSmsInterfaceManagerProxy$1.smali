.class Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "IccSmsInterfaceManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->getResultCode()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->getResultData()Ljava/lang/String;

    move-result-object v1

    .local v1, destAddr:Ljava/lang/String;
    const-string v0, "scAddr"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, scAddr:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "multipart"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .local v10, sentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .restart local v10       #sentIntent:Landroid/app/PendingIntent;
    :cond_2
    const/4 v11, 0x0

    .local v11, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .restart local v11       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v9, 0x0

    .local v9, text:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #text:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #text:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;
    invoke-static {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;->access$000(Lcom/android/internal/telephony/IccSmsInterfaceManagerProxy;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
