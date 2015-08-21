.class public Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CookieHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->this$0:Lcom/android/bluetooth/opp/MiuiNanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    const-string v7, "cookie"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "raw":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "tokens":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .local v5, "token":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "data":[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    const/4 v9, 0x1

    aget-object v9, v1, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "token":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-string v0, "-delete-"

    const/16 v1, -0x1e

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->set(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->cookies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public set(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;)V
    .locals 1
    .param p1, "cookie"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "expires"    # I

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;

    invoke-static {p3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;->getHTTPTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unloadQueue(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;)V
    .locals 4
    .param p1, "response"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;

    .prologue
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$CookieHandler;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;

    .local v0, "cookie":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;
    const-string v2, "Set-Cookie"

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;->getHTTPHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cookie":Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Cookie;
    :cond_0
    return-void
.end method
