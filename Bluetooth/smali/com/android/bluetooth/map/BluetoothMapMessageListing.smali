.class public Lcom/android/bluetooth/map/BluetoothMapMessageListing;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListing"


# instance fields
.field private hasUnread:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    .locals 2
    .param p1, "element"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRead()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 44
    :cond_0
    return-void
.end method

.method public encode()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 77
    .local v3, "sw":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 79
    .local v4, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 80
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    const-string v5, ""

    const-string v6, "MAP-msg-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    const-string v5, ""

    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 85
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 89
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    .line 87
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v5, ""

    const-string v6, "MAP-msg-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 91
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMapMessageListing"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnread()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "offset"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 105
    add-int v0, p2, p1

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    add-int v1, p2, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 101
    return-void
.end method
