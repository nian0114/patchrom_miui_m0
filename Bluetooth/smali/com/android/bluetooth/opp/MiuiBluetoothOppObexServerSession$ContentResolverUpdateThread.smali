.class Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
.super Ljava/lang/Thread;
.source "MiuiBluetoothOppObexServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolverUpdateThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private contentUri:Landroid/net/Uri;

.field private volatile interrupted:Z

.field private mContext1:Landroid/content/Context;

.field private position:J

.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cntUri"    # Landroid/net/Uri;
    .param p4, "pos"    # J

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    const-string v0, "BtOpp Server ContentResolverUpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->position:J

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "updateValues":Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->position:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupted:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "MiuiBluetoothObexOppServerSession"

    const-string v3, "ContentResolverUpdateThread was interrupted before sleep !, exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/lang/InterruptedException;
    const-string v2, "MiuiBluetoothObexOppServerSession"

    const-string v3, "Server ContentResolverUpdateThread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateProgress(J)V
    .locals 0
    .param p1, "pos"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->position:J

    return-void
.end method
