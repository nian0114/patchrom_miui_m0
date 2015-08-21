.class public Lcom/android/bluetooth/map/BluetoothMapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServer.java"


# static fields
.field private static final D:Z = true

.field private static final MAP_TARGET:[B

.field private static final TAG:Ljava/lang/String; = "BluetoothMapObexServer"

.field private static final TYPE_GET_FOLDER_LISTING:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TYPE_GET_MESSAGE_LISTING:Ljava/lang/String; = "x-bt/MAP-msg-listing"

.field private static final TYPE_MESSAGE:Ljava/lang/String; = "x-bt/message"

.field private static final TYPE_MESSAGE_UPDATE:Ljava/lang/String; = "x-bt/MAP-messageUpdate"

.field private static final TYPE_SET_MESSAGE_STATUS:Ljava/lang/String; = "x-bt/messageStatus"

.field private static final TYPE_SET_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    return-void

    .line 46
    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mns"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .prologue
    .line 75
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 77
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    .line 79
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 80
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructure()V

    .line 82
    return-void
.end method

.method private buildFolderStructure()V
    .locals 4

    .prologue
    .line 88
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "root"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 90
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 91
    .local v0, "tmpFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 92
    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 93
    const-string v1, "outbox"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 94
    const-string v1, "sent"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 95
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 96
    const-string v1, "draft"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 97
    return-void
.end method

.method private static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 701
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :try_start_0
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "NEW!!! Dumping HeaderSet END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 696
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 697
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 698
    return-void
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 11
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 237
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 238
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v8, 0xcc

    .line 283
    :goto_0
    return v8

    .line 242
    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 243
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p2

    .line 245
    :cond_2
    const-string v8, "outbox"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "draft"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 246
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Push message only allowed to outbox and draft. folderName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v8, 0xc6

    goto :goto_0

    .line 255
    :cond_3
    invoke-interface {p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 256
    .local v0, "bMsgStream":Ljava/io/InputStream;
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    invoke-static {v0, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v5

    .line 258
    .local v5, "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getContentObserver()Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-result-object v6

    .line 259
    .local v6, "observer":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    if-nez v6, :cond_4

    .line 260
    const/16 v8, 0xd3

    goto :goto_0

    .line 263
    :cond_4
    invoke-virtual {v6, v5, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)J

    move-result-wide v2

    .line 264
    .local v2, "handle":J
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushMessage handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_5

    .line 266
    const/16 v8, 0xd3

    goto :goto_0

    .line 268
    :cond_5
    new-instance v7, Ljavax/obex/HeaderSet;

    invoke-direct {v7}, Ljavax/obex/HeaderSet;-><init>()V

    .line 269
    .local v7, "replyHeaders":Ljavax/obex/HeaderSet;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    invoke-static {v2, v3, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "handleStr":Ljava/lang/String;
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleStr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " message.getType(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 272
    invoke-interface {p1, v7}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    const/16 v8, 0xa0

    goto/16 :goto_0

    .line 275
    .end local v0    # "bMsgStream":Ljava/io/InputStream;
    .end local v2    # "handle":J
    .end local v4    # "handleStr":Ljava/lang/String;
    .end local v5    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v6    # "observer":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .end local v7    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "BluetoothMapObexServer"

    const-string v9, "Wrongly formatted bMessage received"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const/16 v8, 0xcc

    goto/16 :goto_0

    .line 278
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "BluetoothMapObexServer"

    const-string v9, "Exception occured: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/16 v8, 0xc0

    goto/16 :goto_0
.end method

.method private sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 560
    const/4 v8, 0x0

    .line 561
    .local v8, "outStream":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 562
    .local v7, "outBytes":[B
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 563
    .local v6, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/4 v1, 0x0

    .line 564
    .local v1, "bytesWritten":I
    new-instance v9, Ljavax/obex/HeaderSet;

    invoke-direct {v9}, Ljavax/obex/HeaderSet;-><init>()V

    .line 566
    .local v9, "replyHeaders":Ljavax/obex/HeaderSet;
    if-nez p2, :cond_0

    .line 567
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 568
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v10, 0x400

    invoke-virtual {p2, v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 575
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v5

    .line 576
    .local v5, "maxListCount":I
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v3

    .line 578
    .local v3, "listStartOffset":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    .line 579
    const/4 v3, 0x0

    .line 581
    :cond_1
    const/4 v10, -0x1

    if-ne v5, v10, :cond_2

    .line 582
    const/16 v5, 0x400

    .line 584
    :cond_2
    if-eqz v5, :cond_3

    .line 586
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v10, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->encode(II)[B

    move-result-object v7

    .line 587
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 591
    :cond_3
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolderCount()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    .line 592
    const/16 v10, 0x4c

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 593
    invoke-interface {p1, v9}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v4

    .line 605
    .local v4, "maxChunkSize":I
    if-eqz v7, :cond_7

    .line 607
    :goto_0
    :try_start_1
    array-length v10, v7

    if-ge v1, v10, :cond_8

    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    if-nez v10, :cond_8

    .line 608
    array-length v10, v7

    sub-int/2addr v10, v1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 609
    .local v0, "bytesToWrite":I
    invoke-virtual {v8, v7, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    add-int/2addr v1, v0

    goto :goto_0

    .line 595
    .end local v0    # "bytesToWrite":I
    .end local v3    # "listStartOffset":I
    .end local v4    # "maxChunkSize":I
    .end local v5    # "maxListCount":I
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e1":Ljava/io/IOException;
    const-string v10, "BluetoothMapObexServer"

    const-string v11, "sendFolderListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    const/16 v10, 0xc0

    .line 631
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_1
    return v10

    .line 598
    :catch_1
    move-exception v2

    .line 599
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    const-string v10, "BluetoothMapObexServer"

    const-string v11, "sendFolderListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    const/16 v10, 0xc0

    goto :goto_1

    .line 615
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "listStartOffset":I
    .restart local v4    # "maxChunkSize":I
    .restart local v5    # "maxListCount":I
    :catchall_0
    move-exception v10

    if-eqz v8, :cond_4

    .line 617
    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 615
    :cond_4
    :goto_2
    throw v10

    .line 612
    :catch_2
    move-exception v10

    .line 615
    if-eqz v8, :cond_5

    .line 617
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 625
    :cond_5
    :goto_3
    array-length v10, v7

    if-ne v1, v10, :cond_6

    .line 626
    const/16 v10, 0xa0

    goto :goto_1

    .line 628
    :cond_6
    const/16 v10, 0xc0

    goto :goto_1

    .line 631
    :cond_7
    const/16 v10, 0xa0

    goto :goto_1

    .line 618
    :catch_3
    move-exception v10

    goto :goto_3

    :catch_4
    move-exception v11

    goto :goto_2

    .line 615
    :cond_8
    if-eqz v8, :cond_5

    .line 617
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3
.end method

.method private sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 9
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/16 v6, 0xa0

    const/16 v7, 0xc0

    .line 650
    const/4 v1, 0x0

    .line 654
    .local v1, "bytesWritten":I
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v8, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v4

    .line 655
    .local v4, "outBytes":[B
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 665
    .local v5, "outStream":Ljava/io/OutputStream;
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 667
    .local v3, "maxChunkSize":I
    if-eqz v4, :cond_0

    .line 669
    :goto_0
    :try_start_1
    array-length v8, v4

    if-ge v1, v8, :cond_3

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    if-nez v8, :cond_3

    .line 670
    array-length v8, v4

    sub-int/2addr v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 671
    .local v0, "bytesToWrite":I
    invoke-virtual {v5, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    add-int/2addr v1, v0

    goto :goto_0

    .line 657
    .end local v0    # "bytesToWrite":I
    .end local v3    # "maxChunkSize":I
    .end local v4    # "outBytes":[B
    .end local v5    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 658
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "BluetoothMapObexServer"

    const-string v8, "sendGetMessageRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 691
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return v6

    .line 660
    :catch_1
    move-exception v2

    .line 661
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "BluetoothMapObexServer"

    const-string v8, "sendGetMessageRsp: IllegalArgumentException (e.g. invalid handle) - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 662
    goto :goto_1

    .line 677
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "maxChunkSize":I
    .restart local v4    # "outBytes":[B
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    .line 679
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 677
    :cond_1
    :goto_2
    throw v6

    .line 674
    :catch_2
    move-exception v8

    .line 677
    if-eqz v5, :cond_2

    .line 679
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 685
    :cond_2
    :goto_3
    array-length v8, v4

    if-eq v1, v8, :cond_0

    move v6, v7

    .line 688
    goto :goto_1

    .line 680
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v7

    goto :goto_2

    .line 677
    :cond_3
    if-eqz v5, :cond_2

    .line 679
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3
.end method

.method private sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 15
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p3, "folderName"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v11, 0x0

    .line 452
    .local v11, "outStream":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 453
    .local v9, "outBytes":[B
    const/4 v3, 0x0

    .line 454
    .local v3, "bytesWritten":I
    const/4 v5, 0x0

    .line 455
    .local v5, "hasUnread":Z
    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    .line 456
    .local v12, "replyHeaders":Ljavax/obex/HeaderSet;
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 458
    .local v8, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    if-nez p3, :cond_0

    .line 459
    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p3

    .line 461
    :cond_0
    if-nez p2, :cond_1

    .line 462
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 463
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 464
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 470
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 472
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 473
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 475
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 476
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 478
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    if-eqz v13, :cond_4

    .line 479
    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v10

    .line 481
    .local v10, "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 482
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode()[B

    move-result-object v9

    .line 483
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread()Z

    move-result v5

    .line 495
    .end local v10    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :goto_0
    if-eqz v5, :cond_5

    .line 497
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    .line 502
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 503
    const/16 v13, 0x4c

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 504
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v7

    .line 515
    .local v7, "maxChunkSize":I
    if-eqz v9, :cond_8

    .line 517
    :goto_2
    :try_start_1
    array-length v13, v9

    if-ge v3, v13, :cond_a

    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    if-nez v13, :cond_a

    .line 518
    array-length v13, v9

    sub-int/2addr v13, v3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 519
    .local v2, "bytesToWrite":I
    invoke-virtual {v11, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    add-int/2addr v3, v2

    goto :goto_2

    .line 486
    .end local v2    # "bytesToWrite":I
    .end local v7    # "maxChunkSize":I
    :cond_4
    :try_start_2
    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v6

    .line 487
    .local v6, "listSize":I
    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnread(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    .line 488
    invoke-virtual {v8, v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 489
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 506
    .end local v6    # "listSize":I
    :catch_0
    move-exception v4

    .line 507
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "BluetoothMapObexServer"

    const-string v14, "sendMessageListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const/16 v13, 0xc0

    .line 543
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3
    return v13

    .line 499
    :cond_5
    const/4 v13, 0x0

    :try_start_3
    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 509
    :catch_1
    move-exception v4

    .line 510
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v13, "BluetoothMapObexServer"

    const-string v14, "sendMessageListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    const/16 v13, 0xc0

    goto :goto_3

    .line 526
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "maxChunkSize":I
    :catchall_0
    move-exception v13

    if-eqz v11, :cond_6

    .line 528
    :try_start_4
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 526
    :cond_6
    :goto_4
    throw v13

    .line 522
    :catch_2
    move-exception v13

    .line 526
    if-eqz v11, :cond_7

    .line 528
    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 534
    :cond_7
    :goto_5
    array-length v13, v9

    if-eq v3, v13, :cond_9

    .line 535
    const/16 v13, 0xc0

    goto :goto_3

    .line 538
    :cond_8
    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 543
    :cond_9
    :goto_6
    const/16 v13, 0xa0

    goto :goto_3

    .line 539
    :catch_3
    move-exception v13

    goto :goto_6

    .line 529
    :catch_4
    move-exception v13

    goto :goto_5

    :catch_5
    move-exception v14

    goto :goto_4

    .line 526
    :cond_a
    if-eqz v11, :cond_7

    .line 528
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5
.end method

.method private setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 11
    .param p1, "msgHandle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/16 v8, 0xcc

    const/4 v9, -0x1

    const/16 v7, 0xd3

    .line 287
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v3

    .line 288
    .local v3, "indicator":I
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v6

    .line 292
    .local v6, "value":I
    if-eq v3, v9, :cond_0

    if-eq v6, v9, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v8

    .line 319
    :cond_1
    :goto_0
    return v7

    .line 297
    :cond_2
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getContentObserver()Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-result-object v5

    .line 298
    .local v5, "observer":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    if-eqz v5, :cond_1

    .line 303
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v1

    .line 304
    .local v1, "handle":J
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 310
    .local v4, "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 311
    invoke-virtual {v5, v1, v2, v4, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 319
    :cond_3
    const/16 v7, 0xa0

    goto :goto_0

    .line 305
    .end local v1    # "handle":J
    .end local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrongly formatted message handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 307
    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "handle":J
    .restart local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_4
    invoke-virtual {v5, v1, v2, v4, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0
.end method

.method private setNotificationRegistration(Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 4
    .param p1, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    .line 223
    .local v0, "mns":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 224
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 226
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 227
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 228
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    const-string v2, "BluetoothMapObexServer"

    const-string v3, "MSG_MNS_NOTIFICATION_REGISTRATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v2, 0xa0

    .line 232
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xd3

    goto :goto_0
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 165
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    .line 168
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 365
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 366
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 367
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 101
    const-string v6, "BluetoothMapObexServer"

    const-string v9, "onConnect():"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 105
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 106
    .local v5, "uuid":[B
    if-nez v5, :cond_0

    move v6, v7

    .line 146
    .end local v5    # "uuid":[B
    :goto_0
    return v6

    .line 109
    .restart local v5    # "uuid":[B
    :cond_0
    const-string v6, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    array-length v6, v5

    if-eq v6, v11, :cond_1

    .line 112
    const-string v6, "BluetoothMapObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 116
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 117
    const-string v6, "BluetoothMapObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 118
    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 129
    .local v4, "remote":[B
    if-eqz v4, :cond_4

    .line 130
    const-string v6, "BluetoothMapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 143
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 144
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 146
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 122
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "remote":[B
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothMapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 124
    goto/16 :goto_0

    .line 133
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "uuid":[B
    :catch_1
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BluetoothMapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 135
    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 151
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 154
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 12
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v9, 0xc0

    .line 373
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 374
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "appParamRaw":[B
    const/4 v2, 0x0

    .line 381
    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v6

    .line 382
    .local v6, "request":Ljavax/obex/HeaderSet;
    const/16 v8, 0x42

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 383
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 384
    .local v5, "name":Ljava/lang/String;
    const/16 v8, 0x4c

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v1, v0

    .line 385
    if-eqz v1, :cond_0

    .line 386
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .local v3, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v2, v3

    .line 389
    .end local v3    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .restart local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnGet type is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-nez v7, :cond_1

    move v8, v9

    .line 433
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "request":Ljavax/obex/HeaderSet;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return v8

    .line 396
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "request":Ljavax/obex/HeaderSet;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    const-string v8, "x-obex/folder-listing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 401
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 403
    :cond_2
    const-string v8, "x-bt/MAP-msg-listing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 417
    invoke-direct {p0, p1, v2, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 419
    :cond_3
    const-string v8, "x-bt/message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 424
    invoke-direct {p0, p1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 427
    :cond_4
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown type request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    const/16 v8, 0xc6

    goto :goto_0

    .line 430
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "request":Ljavax/obex/HeaderSet;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 432
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "BluetoothMapObexServer"

    const-string v10, "request headers error, Exception:"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 433
    goto :goto_0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 12
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v9, 0xc0

    .line 173
    const-string v8, "BluetoothMapObexServer"

    const-string v10, "onPut(): enter"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 175
    const/4 v6, 0x0

    .line 178
    .local v6, "request":Ljavax/obex/HeaderSet;
    const/4 v2, 0x0

    .line 181
    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v6

    .line 182
    const/16 v8, 0x42

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 183
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, "name":Ljava/lang/String;
    const/16 v8, 0x4c

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v1, v0

    .line 185
    .local v1, "appParamRaw":[B
    if-eqz v1, :cond_0

    .line 186
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .local v3, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v2, v3

    .line 192
    .end local v3    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .restart local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v8, "x-bt/MAP-messageUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 197
    const/16 v8, 0xa0

    .line 217
    .end local v1    # "appParamRaw":[B
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return v8

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "BluetoothMapObexServer"

    const-string v10, "request headers error"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 189
    goto :goto_0

    .line 198
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "appParamRaw":[B
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    const-string v8, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 202
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setNotificationRegistration(Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 203
    :cond_2
    const-string v8, "x-bt/messageStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    invoke-direct {p0, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 208
    :cond_3
    const-string v8, "x-bt/message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 213
    invoke-direct {p0, p1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    :cond_4
    move v8, v9

    .line 217
    goto :goto_0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 8
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0xc0

    .line 327
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 329
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .local v2, "folderName":Ljava/lang/String;
    const-string v4, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetPath name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "create: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    if-ne p3, v7, :cond_0

    .line 340
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 341
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 346
    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ""

    if-ne v2, v4, :cond_4

    .line 347
    :cond_1
    if-nez p3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 358
    :cond_2
    :goto_0
    const/16 v3, 0xa0

    .end local v2    # "folderName":Ljava/lang/String;
    :cond_3
    :goto_1
    return v3

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothMapObexServer"

    const-string v5, "request headers error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "folderName":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 352
    .local v1, "folder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v1, :cond_3

    .line 353
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0
.end method
