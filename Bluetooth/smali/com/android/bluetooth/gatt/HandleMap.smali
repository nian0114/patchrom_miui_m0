.class Lcom/android/bluetooth/gatt/HandleMap;
.super Ljava/lang/Object;
.source "HandleMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/HandleMap$Entry;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BtGatt.HandleMap"

.field public static final TYPE_CHARACTERISTIC:I = 0x2

.field public static final TYPE_DESCRIPTOR:I = 0x3

.field public static final TYPE_SERVICE:I = 0x1

.field public static final TYPE_UNDEFINED:I


# instance fields
.field mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/HandleMap$Entry;",
            ">;"
        }
    .end annotation
.end field

.field mLastCharacteristic:I

.field mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    .line 88
    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mLastCharacteristic:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    .line 94
    return-void
.end method


# virtual methods
.method addCharacteristic(IILjava/util/UUID;I)V
    .locals 8
    .param p1, "serverIf"    # I
    .param p2, "handle"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "serviceHandle"    # I

    .prologue
    .line 107
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mLastCharacteristic:I

    .line 108
    iget-object v7, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    const/4 v3, 0x2

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/HandleMap$Entry;-><init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method addDescriptor(IILjava/util/UUID;I)V
    .locals 9
    .param p1, "serverIf"    # I
    .param p2, "handle"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "serviceHandle"    # I

    .prologue
    .line 112
    iget-object v8, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    const/4 v3, 0x3

    iget v7, p0, Lcom/android/bluetooth/gatt/HandleMap;->mLastCharacteristic:I

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/HandleMap$Entry;-><init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method addRequest(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "handle"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method addService(IILjava/util/UUID;IIZ)V
    .locals 9
    .param p1, "serverIf"    # I
    .param p2, "handle"    # I
    .param p3, "uuid"    # Ljava/util/UUID;
    .param p4, "serviceType"    # I
    .param p5, "instance"    # I
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 103
    iget-object v8, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/gatt/HandleMap$Entry;-><init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    return-void
.end method

.method deleteRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method deleteService(II)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "serviceHandle"    # I

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 166
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v2, p1, :cond_0

    .line 168
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-eq v2, p2, :cond_1

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    if-ne v2, p2, :cond_0

    .line 170
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 172
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_2
    return-void
.end method

.method dump()V
    .locals 5

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v3, "-------------- GATT Handle Map -----------------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nEntries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nRequests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v3, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 206
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", started "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Characteristic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 218
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Descriptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 223
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_0
    const-string v3, "\n------------------------------------------------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v3, "BtGatt.HandleMap"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .locals 5
    .param p1, "handle"    # I

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 129
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-ne v2, p1, :cond_0

    .line 133
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const-string v2, "BtGatt.HandleMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getByHandle() - Handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .locals 4
    .param p1, "requestId"    # I

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/bluetooth/gatt/HandleMap;->mRequestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 188
    .local v0, "handle":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 189
    const-string v1, "BtGatt.HandleMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getByRequestId() - Request ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v1

    goto :goto_0
.end method

.method getCharacteristicHandle(ILjava/util/UUID;I)I
    .locals 5
    .param p1, "serviceHandle"    # I
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instance"    # I

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 151
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    if-ne v2, p3, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 160
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :goto_0
    return v2

    .line 158
    :cond_1
    const-string v2, "BtGatt.HandleMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCharacteristicHandle() - Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/HandleMap$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method getServiceHandle(Ljava/util/UUID;II)I
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "serviceType"    # I
    .param p3, "instance"    # I

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 138
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    if-ne v2, p2, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    if-ne v2, p3, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 146
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :goto_0
    return v2

    .line 145
    :cond_1
    const-string v2, "BtGatt.HandleMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServiceHandle() - UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setStarted(IIZ)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "handle"    # I
    .param p3, "started"    # Z

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 117
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    if-ne v2, p2, :cond_0

    .line 122
    iput-boolean p3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 125
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_1
    return-void
.end method
