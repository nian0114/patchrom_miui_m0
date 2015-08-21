.class Lcom/android/bluetooth/gatt/SearchQueue;
.super Ljava/lang/Object;
.source "SearchQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    }
.end annotation


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/SearchQueue$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method add(IIIJJ)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuidLsb"    # J
    .param p6, "srvcUuidMsb"    # J

    .prologue
    .line 44
    new-instance v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/SearchQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/SearchQueue;)V

    .line 45
    .local v0, "entry":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    iput p1, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    .line 46
    iput p2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    .line 47
    iput p3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    .line 48
    iput-wide p4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    .line 49
    iput-wide p6, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    .line 51
    iget-object v1, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method add(IIIJJIJJ)V
    .locals 2
    .param p1, "connId"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuidLsb"    # J
    .param p6, "srvcUuidMsb"    # J
    .param p8, "charInstId"    # I
    .param p9, "charUuidLsb"    # J
    .param p11, "charUuidMsb"    # J

    .prologue
    .line 58
    new-instance v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/SearchQueue$Entry;-><init>(Lcom/android/bluetooth/gatt/SearchQueue;)V

    .line 59
    .local v0, "entry":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    iput p1, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    .line 60
    iput p2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    .line 61
    iput p3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    .line 62
    iput-wide p4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    .line 63
    iput-wide p6, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    .line 64
    iput p8, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charInstId:I

    .line 65
    iput-wide p9, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    .line 66
    iput-wide p11, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidMsb:J

    .line 67
    iget-object v1, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method pop()Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v1, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    .line 72
    .local v0, "entry":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    iget-object v1, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    return-object v0
.end method

.method removeConnId(I)V
    .locals 3
    .param p1, "connId"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/bluetooth/gatt/SearchQueue;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/SearchQueue$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    .line 79
    .local v0, "entry":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    iget v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    if-ne v2, p1, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 83
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_1
    return-void
.end method
