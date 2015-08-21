.class Lcom/android/bluetooth/a2dp/Avrcp$Metadata;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 523
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;

    .line 525
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    .line 526
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    .line 527
    return-void
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp$Metadata;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
