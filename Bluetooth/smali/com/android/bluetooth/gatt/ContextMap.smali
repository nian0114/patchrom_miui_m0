.class Lcom/android/bluetooth/gatt/ContextMap;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ContextMap$App;,
        Lcom/android/bluetooth/gatt/ContextMap$Connection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BtGatt.ContextMap"


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;>;"
        }
    .end annotation
.end field

.field mConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.Connection;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method add(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    .local p2, "callback":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ContextMap$App;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/bluetooth/gatt/ContextMap$App;-><init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addConnection(IILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "connId"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 142
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v2

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 144
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    new-instance v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/android/bluetooth/gatt/ContextMap$Connection;-><init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    monitor-exit v2

    .line 148
    return-void

    .line 147
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addressByConnId(I)Ljava/lang/String;
    .locals 4
    .param p1, "connId"    # I

    .prologue
    .line 239
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 242
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    monitor-exit v3

    .line 244
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :goto_0
    return-object v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method clear()V
    .locals 4

    .prologue
    .line 262
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 264
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 266
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 269
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    .line 272
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 273
    monitor-exit v3

    .line 274
    return-void

    .line 273
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "id"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .local v1, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    if-nez v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 229
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v5, p1, :cond_1

    .line 230
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method dump()V
    .locals 8

    .prologue
    .line 280
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v6, "-------------- GATT Context Map ----------------"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nEntries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v6, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 285
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 287
    .local v3, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v6, v3, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectionByApp(I)Ljava/util/List;

    move-result-object v2

    .line 289
    .local v2, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n\nApplication Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nUUID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nConnections: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 294
    .local v5, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 295
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 296
    .local v1, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 300
    .end local v1    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v2    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    .end local v3    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    .end local v5    # "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    const-string v6, "\n------------------------------------------------"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v6, "BtGatt.ContextMap"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 4
    .param p1, "connId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    .local v1, "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/ContextMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v2

    monitor-exit v3

    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :goto_0
    return-object v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    .end local v1    # "ii":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v2, p1, :cond_0

    monitor-exit v3

    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :goto_0
    return-object v0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context not found for ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.App;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 184
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 186
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 189
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :goto_0
    return-object v0

    .line 188
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context not found for UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getConnectedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 197
    .local v0, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 200
    .local v1, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget-object v3, v1, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v1    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method getConnectionByApp(I)Ljava/util/List;
    .locals 5
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ContextMap",
            "<TT;>.Connection;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "currentConnections":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 250
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 252
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v3, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    if-ne v3, p1, :cond_0

    .line 253
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method remove(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 125
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    monitor-enter v3

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 129
    .local v0, "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    if-ne v2, p1, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->unlinkToDeath()V

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;"
    :cond_1
    monitor-exit v3

    .line 136
    return-void

    .line 135
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.App;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removeConnection(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "connId"    # I

    .prologue
    .line 154
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>;"
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    monitor-enter v3

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap;->mConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 158
    .local v0, "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    if-ne v2, p2, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 163
    .end local v0    # "connection":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    :cond_1
    monitor-exit v3

    .line 164
    return-void

    .line 163
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
