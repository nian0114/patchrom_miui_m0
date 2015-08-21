.class Lcom/android/bluetooth/opp/MiuiHttpFileServer$1;
.super Ljava/io/FileInputStream;
.source "MiuiHttpFileServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiHttpFileServer;->serveFile(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

.field final synthetic val$dataLen:J


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiHttpFileServer;Ljava/io/File;J)V
    .locals 0
    .param p2, "x0"    # Ljava/io/File;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$1;->this$0:Lcom/android/bluetooth/opp/MiuiHttpFileServer;

    iput-wide p3, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$1;->val$dataLen:J

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-wide v0, p0, Lcom/android/bluetooth/opp/MiuiHttpFileServer$1;->val$dataLen:J

    long-to-int v0, v0

    return v0
.end method
