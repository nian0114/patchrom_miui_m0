.class public abstract Lcom/android/bluetooth/map/BluetoothMapbMessage;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessage$1;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    }
.end annotation


# static fields
.field protected static final D:Z = false

.field public static INVALID_VALUE:I = 0x0

.field protected static TAG:Ljava/lang/String; = null

.field protected static final V:Z = false

.field private static final VERSION:Ljava/lang/String; = "VERSION:1.0"


# instance fields
.field protected appParamCharset:I

.field private bMsgLength:I

.field protected charset:Ljava/lang/String;

.field protected encoding:Ljava/lang/String;

.field private folder:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private originator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private partId:J

.field private recipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field protected type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "BluetoothMapbMessage"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->appParamCharset:I

    .line 47
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 50
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    .line 53
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->partId:J

    .line 54
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->language:Ljava/lang/String;

    .line 58
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I

    .line 60
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 61
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 372
    return-void
.end method

.method public static parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .locals 14
    .param p0, "bMsgStream"    # Ljava/io/InputStream;
    .param p1, "appParamCharset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    .line 376
    const-string v2, ""

    .line 377
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 378
    .local v3, "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    const/4 v5, 0x0

    .line 379
    .local v5, "status":Z
    const/4 v6, 0x0

    .line 380
    .local v6, "statusFound":Z
    const/4 v7, 0x0

    .line 381
    .local v7, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v1, 0x0

    .line 445
    .local v1, "folder":Ljava/lang/String;
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;-><init>(Ljava/io/InputStream;)V

    .line 446
    .local v4, "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    const-string v9, "BEGIN:BMSG"

    invoke-virtual {v4, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 447
    const-string v9, "VERSION"

    const-string v10, "1.0"

    invoke-virtual {v4, v9, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v2

    .line 451
    :goto_0
    const-string v9, "BEGIN:VCARD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "BEGIN:BENV"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 452
    const-string v9, "STATUS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 453
    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "arg":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v9, v0

    if-ne v9, v11, :cond_3

    .line 455
    aget-object v9, v0, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "READ"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 456
    const/4 v5, 0x1

    .line 466
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, "TYPE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 467
    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v9, v0

    if-ne v9, v11, :cond_7

    .line 469
    aget-object v9, v0, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    .line 471
    if-nez p1, :cond_4

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v7, v9, :cond_4

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq v7, v9, :cond_4

    .line 473
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Native appParamsCharset only supported for SMS"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 457
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    aget-object v9, v0, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UNREAD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 458
    const/4 v5, 0x0

    goto :goto_1

    .line 460
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong value in \'STATUS\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 463
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing value for \'STATUS\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 475
    .restart local v8    # "value":Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 491
    .end local v0    # "arg":[Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string v9, "FOLDER"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 492
    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 493
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_6

    array-length v9, v0

    if-ne v9, v11, :cond_6

    .line 494
    aget-object v9, v0, v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 498
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 478
    .restart local v0    # "arg":[Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :pswitch_0
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    .end local v3    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 479
    .restart local v3    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_2

    .line 482
    :pswitch_1
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .end local v3    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;-><init>()V

    .line 483
    .restart local v3    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_2

    .line 488
    .end local v8    # "value":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing value for \'TYPE\':"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 500
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_8
    if-nez v3, :cond_9

    .line 501
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Missing bMessage TYPE: - unable to parse body-content"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 502
    :cond_9
    invoke-virtual {v3, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 503
    iput p1, v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->appParamCharset:I

    .line 504
    if-eqz v1, :cond_a

    .line 505
    invoke-virtual {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setCompleteFolder(Ljava/lang/String;)V

    .line 506
    :cond_a
    if-eqz v6, :cond_b

    .line 507
    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    .line 510
    :cond_b
    :goto_3
    const-string v9, "BEGIN:VCARD"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 512
    invoke-static {v4, v13}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V

    .line 513
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 515
    :cond_c
    const-string v9, "BEGIN:BENV"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 516
    invoke-direct {v3, v4, v13}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 525
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_4
    return-object v3

    .line 518
    :cond_d
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bmessage has no BEGIN:BENV - line:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 526
    :catch_0
    move-exception v9

    goto :goto_4

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V
    .locals 12
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 557
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, "line":Ljava/lang/String;
    :goto_0
    const-string v7, "END:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 559
    const-string v7, "PARTID:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 560
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "arg":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v7, v0

    if-ne v7, v11, :cond_1

    .line 563
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->partId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 564
    .restart local v0    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong value in \'PARTID\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 568
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'PARTID\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 571
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_2
    const-string v7, "ENCODING:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 572
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 573
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v7, v0

    if-ne v7, v11, :cond_3

    .line 574
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 576
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'ENCODING\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 579
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_4
    const-string v7, "CHARSET:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 580
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 581
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v7, v0

    if-ne v7, v11, :cond_5

    .line 582
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    goto/16 :goto_1

    .line 584
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'CHARSET\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 587
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_6
    const-string v7, "LANGUAGE:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 588
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 589
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v7, v0

    if-ne v7, v11, :cond_7

    .line 590
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->language:Ljava/lang/String;

    goto/16 :goto_1

    .line 592
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'LANGUAGE\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 595
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_8
    const-string v7, "LENGTH:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 596
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 597
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v7, v0

    if-ne v7, v11, :cond_9

    .line 599
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 600
    :catch_1
    move-exception v2

    .line 601
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong value in \'LENGTH\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 604
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'LENGTH\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 607
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_a
    const-string v7, "BEGIN:MSG"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 608
    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I

    sget v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    if-ne v7, v8, :cond_b

    .line 609
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Missing value for \'LENGTH\'. Unable to read remaining part of the message"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 617
    :cond_b
    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getDataBytes(I)[B

    move-result-object v6

    .line 620
    .local v6, "rawData":[B
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 641
    .local v1, "data":Ljava/lang/String;
    const-string v7, "\r\nEND:MSG\r\n"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 642
    .local v5, "messages":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgInit()V

    .line 643
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_0

    .line 644
    aget-object v7, v5, v3

    const-string v8, "^BEGIN:MSG\r\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 645
    aget-object v7, v5, v3

    const-string v8, "\r\n([/]*)/END\\:MSG"

    const-string v9, "\r\n$1END:MSG"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 646
    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 647
    aget-object v7, v5, v3

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgPart(Ljava/lang/String;)V

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 631
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "messages":[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 632
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unable to convert to UTF-8"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 652
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "rawData":[B
    :cond_c
    return-void
.end method

.method private parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V
    .locals 3
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p2, "level"    # I

    .prologue
    .line 535
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "line":Ljava/lang/String;
    :goto_0
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :cond_1
    const-string v1, "BEGIN:BENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 549
    :cond_2
    const-string v1, "BEGIN:BBODY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 551
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V

    .line 553
    :cond_3
    return-void
.end method


# virtual methods
.method public addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "originator"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method public addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    return-void
.end method

.method public addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    return-void
.end method

.method public addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    return-void
.end method

.method protected decodeBinary(Ljava/lang/String;)[B
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 789
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    new-array v4, v6, [B

    .line 792
    .local v4, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    array-length v3, v4

    .local v3, "n":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 794
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 795
    .local v5, "value":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 792
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 805
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public abstract encode()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected encodeBinary([B[B)Ljava/lang/String;
    .locals 5
    .param p1, "pduData"    # [B
    .param p2, "scAddressData"    # [B

    .prologue
    const/16 v4, 0x10

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 770
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 771
    aget-byte v2, p2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    aget-byte v2, p2, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 775
    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 780
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodeGeneric(Ljava/util/ArrayList;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 812
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "BEGIN:BMSG"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const-string v9, "VERSION:1.0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const-string v9, "STATUS:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const-string v9, "TYPE:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x200

    if-le v9, v10, :cond_0

    .line 817
    const-string v9, "FOLDER:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v11, v11, -0x200

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    :goto_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 821
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 822
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 819
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v9, "FOLDER:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 828
    :cond_1
    const-string v9, "BEGIN:BENV"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 830
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 831
    .restart local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 833
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v9, "BEGIN:BBODY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_3

    .line 835
    const-string v9, "ENCODING:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :cond_3
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_4

    .line 837
    const-string v9, "CHARSET:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_4
    const/4 v4, 0x0

    .line 842
    .local v4, "length":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 843
    .local v2, "fragment":[B
    array-length v9, v2

    add-int/lit8 v9, v9, 0x16

    add-int/2addr v4, v9

    goto :goto_3

    .line 845
    .end local v2    # "fragment":[B
    :cond_5
    const-string v9, "LENGTH:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 850
    .local v6, "msgStart":[B
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x1f

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 851
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    const-string v9, "END:BBODY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v9, "END:BENV"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    const-string v9, "END:BMSG"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 859
    .local v5, "msgEnd":[B
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    array-length v9, v6

    array-length v10, v5

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v8, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 863
    .restart local v2    # "fragment":[B
    const-string v9, "BEGIN:MSG\r\n"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v9, "\r\nEND:MSG\r\n"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .end local v2    # "fragment":[B
    .end local v8    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-object v9

    .restart local v8    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :try_start_1
    invoke-virtual {v8, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_5
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public abstract parseMsgInit()V
.end method

.method public abstract parseMsgPart(Ljava/lang/String;)V
.end method

.method public setCompleteFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    .line 687
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    .line 700
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    .line 691
    return-void
.end method

.method public setRecipient(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "recipient"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .param p1, "read"    # Z

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    const-string v0, "READ"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    .line 672
    :goto_0
    return-void

    .line 671
    :cond_0
    const-string v0, "UNREAD"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 676
    return-void
.end method
