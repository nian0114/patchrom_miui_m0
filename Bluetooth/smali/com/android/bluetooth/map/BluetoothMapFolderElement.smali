.class public Lcom/android/bluetooth/map/BluetoothMapFolderElement;
.super Ljava/lang/Object;
.source "BluetoothMapFolderElement.java"


# instance fields
.field private name:Ljava/lang/String;

.field private parent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private subFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parrent"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->parent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 36
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->parent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 71
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-object v0
.end method

.method public encode(II)[B
    .locals 8
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 98
    .local v3, "sw":Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 100
    .local v4, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_0

    .line 101
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "FolderListingEncode: offset > subFolders.size()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    :cond_0
    add-int v2, p1, p2

    .line 104
    .local v2, "stopIndex":I
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v2, v5, :cond_1

    .line 105
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 108
    :cond_1
    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 109
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    const-string v5, "\n"

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v5, ""

    const-string v6, "folder-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string v5, ""

    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 115
    const-string v5, ""

    const-string v6, "folder"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string v6, ""

    const-string v7, "name"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string v5, ""

    const-string v6, "folder"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    const-string v5, ""

    const-string v6, "folder-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    .end local v1    # "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->parent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .line 59
    .local v0, "rootFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method

.method public getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 90
    .local v1, "subFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    .end local v1    # "subFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubFolderCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
