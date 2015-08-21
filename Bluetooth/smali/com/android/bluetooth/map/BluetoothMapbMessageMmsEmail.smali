.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageMmsEmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    }
.end annotation


# instance fields
.field private bcc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private cc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:Ljava/lang/String;

.field private date:J

.field private encoding:Ljava/lang/String;

.field private from:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private hasHeaders:Z

.field private includeAttachments:Z

.field private messageId:Ljava/lang/String;

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;",
            ">;"
        }
    .end annotation
.end field

.field private replyTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;

.field private textOnly:Z

.field private to:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 95
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    .line 96
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    .line 98
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    .line 99
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    .line 100
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    .line 101
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    .line 102
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    .line 103
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    .line 105
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    .line 107
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->textOnly:Z

    .line 109
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->hasHeaders:Z

    .line 110
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    return-void
.end method

.method private decodeBody(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 555
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BASE64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 565
    :goto_0
    return-object v0

    .line 560
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 565
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method private parseMms(Ljava/lang/String;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 578
    const/4 v5, 0x0

    .line 579
    .local v5, "remaining":Ljava/lang/String;
    const/4 v1, 0x0

    .line 580
    .local v1, "messageBody":Ljava/lang/String;
    const-string v6, "\\r\\n[ \\\t]+"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 581
    const-string v6, "\r\n\r\n"

    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "messageParts":[Ljava/lang/String;
    array-length v6, v2

    if-eq v6, v10, :cond_2

    .line 584
    move-object v1, p1

    .line 598
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 601
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMmsMimeBody(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setTextOnly(Z)V

    .line 603
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 604
    const-string v6, "text/plain"

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 605
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 616
    :cond_1
    return-void

    .line 588
    :cond_2
    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMmsHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 590
    if-eqz v5, :cond_3

    .line 591
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 594
    :cond_3
    aget-object v1, v2, v8

    goto :goto_0

    .line 609
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, "mimeParts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 611
    aget-object v4, v3, v0

    .line 612
    .local v4, "part":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 613
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMmsMimePart(Ljava/lang/String;)V

    .line 610
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseMmsHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "hdrPart"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v13, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, "headers":[Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->hasHeaders:Z

    .line 421
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v1, v7

    .local v1, "c":I
    :goto_0
    if-ge v8, v1, :cond_d

    .line 422
    aget-object v3, v7, v8

    .line 428
    .local v3, "header":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-ne v13, v14, :cond_1

    .line 421
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "headerParts":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 433
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v11, "remaining":Ljava/lang/StringBuilder;
    :goto_2
    if-ge v8, v1, :cond_2

    .line 435
    aget-object v13, v7, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 437
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 494
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v11    # "remaining":Ljava/lang/StringBuilder;
    :goto_3
    return-object v13

    .line 440
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v4    # "headerParts":[Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "headerType":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "headerValue":Ljava/lang/String;
    const-string v13, "FROM"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 448
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 449
    .local v12, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    goto :goto_1

    .line 451
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_4
    const-string v13, "TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 452
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 453
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    goto :goto_1

    .line 455
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    const-string v13, "CC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 456
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 457
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    goto :goto_1

    .line 459
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_6
    const-string v13, "BCC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 460
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 461
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 463
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    const-string v13, "REPLY-TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 464
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 465
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 467
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_8
    const-string v13, "SUBJECT"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 468
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    goto/16 :goto_1

    .line 470
    :cond_9
    const-string v13, "MESSAGE-ID"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 471
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    goto/16 :goto_1

    .line 473
    :cond_a
    const-string v13, "DATE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 476
    const-string v13, "CONTENT-TYPE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 477
    const-string v13, ";"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "contentTypeParts":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v2, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 480
    const/4 v9, 0x1

    .local v9, "j":I
    array-length v10, v2

    .local v10, "n":I
    :goto_4
    if-ge v9, v10, :cond_0

    .line 482
    aget-object v13, v2, v9

    const-string v14, "boundary"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 483
    aget-object v13, v2, v9

    const-string v14, "boundary[\\s]*="

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    .line 480
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 487
    .end local v2    # "contentTypeParts":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v10    # "n":I
    :cond_c
    const-string v13, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 488
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 494
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v5    # "headerType":Ljava/lang/String;
    .end local v6    # "headerValue":Ljava/lang/String;
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_3
.end method

.method private parseMmsMimeBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v0

    .line 551
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->decodeBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 552
    return-void
.end method

.method private parseMmsMimePart(Ljava/lang/String;)V
    .locals 16
    .param p1, "partStr"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v13, "\r\n\r\n"

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "parts":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 501
    move-object/from16 v2, p1

    .line 505
    .local v2, "body":Ljava/lang/String;
    :goto_0
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "headers":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v10

    .line 507
    .local v10, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    .line 509
    .local v11, "partEncoding":Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_8

    aget-object v3, v1, v8

    .line 510
    .local v3, "header":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 509
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 503
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "header":Ljava/lang/String;
    .end local v7    # "headers":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .end local v11    # "partEncoding":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x1

    aget-object v2, v12, v13

    .restart local v2    # "body":Ljava/lang/String;
    goto :goto_0

    .line 513
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v7    # "headers":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .restart local v11    # "partEncoding":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-eq v13, v14, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 515
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, "headerParts":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 517
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "part-Header not formatted correctly: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 518
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "headerType":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, "headerValue":Ljava/lang/String;
    const-string v13, "CONTENT-TYPE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 522
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 523
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** CONTENT-TYPE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 525
    :cond_4
    const-string v13, "CONTENT-LOCATION"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 527
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    .line 528
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    goto :goto_2

    .line 530
    :cond_5
    const-string v13, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 531
    move-object v11, v6

    goto/16 :goto_2

    .line 533
    :cond_6
    const-string v13, "CONTENT-ID"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 535
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    goto/16 :goto_2

    .line 537
    :cond_7
    const-string v13, "CONTENT-DISPOSITION"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 539
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    goto/16 :goto_2

    .line 546
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v5    # "headerType":Ljava/lang/String;
    .end local v6    # "headerValue":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->decodeBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 547
    return-void
.end method


# virtual methods
.method public addBcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public addFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    .line 128
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;-><init>()V

    .line 129
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public addSender(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeMms()[B

    move-result-object v0

    return-object v0
.end method

.method public encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p3, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    const/4 v2, 0x0

    .line 271
    .local v2, "lineLength":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 274
    .local v0, "address":Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 276
    .local v3, "partLength":I
    add-int v4, v2, v3

    const/16 v5, 0x3e6

    if-lt v4, v5, :cond_0

    .line 278
    const-string v4, "\r\n "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v2, 0x0

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/2addr v2, v3

    goto :goto_0

    .line 284
    .end local v0    # "address":Landroid/text/util/Rfc822Token;
    .end local v3    # "partLength":I
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    return-void
.end method

.method public encodeHeaders(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 298
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    sget v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->INVALID_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "Date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 313
    const-string v0, "Subject: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 315
    const-string v0, "From: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 317
    const-string v0, "Sender: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 323
    const-string v0, "To:  undisclosed-recipients:;\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 325
    const-string v0, "To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 327
    const-string v0, "Cc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 328
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 329
    const-string v0, "Bcc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 330
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 331
    const-string v0, "Reply-To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 332
    :cond_8
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->includeAttachments:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 335
    const-string v0, "Message-Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 337
    const-string v0, "Content-Type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_a
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    return-void
.end method

.method public encodeMms()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 383
    .local v1, "count":I
    const-string v7, "8BIT"

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    .line 385
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getIncludeAttachments()Z

    move-result v7

    if-nez v7, :cond_0

    .line 387
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 388
    .local v4, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 391
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 392
    .restart local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    add-int/lit8 v1, v1, 0x1

    .line 393
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getBoundary()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v1, v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v4, v5, v9, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v7, v8

    goto :goto_2

    .line 397
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "mmsBody":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 400
    const-string v7, "END:MSG"

    const-string v8, "/END\\:MSG"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "tmpBody":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v6    # "tmpBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v7

    return-object v7

    .line 403
    :cond_3
    new-array v7, v8, [B

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getBcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    return-wide v0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 134
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 135
    .local v0, "dateObj":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFrom()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncludeAttachments()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->includeAttachments:Z

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReplyTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "message_size":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 252
    .local v2, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v3, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    array-length v3, v3

    add-int/2addr v1, v3

    goto :goto_0

    .line 254
    .end local v2    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_0
    return v1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOnly()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->textOnly:Z

    return v0
.end method

.method public getTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgPart"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMms(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public setBcc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "bcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public setCc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "cc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    .line 187
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .param p1, "date"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    .line 142
    return-void
.end method

.method public setFrom(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    .line 154
    return-void
.end method

.method public setIncludeAttachments(Z)V
    .locals 0
    .param p1, "includeAttachments"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->includeAttachments:Z

    .line 235
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setReplyTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "replyTo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    .line 209
    return-void
.end method

.method public setSender(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "sender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0
    .param p1, "textOnly"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->textOnly:Z

    .line 229
    return-void
.end method

.method public setTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method public updateCharset()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 242
    .local v1, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    .end local v1    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_1
    return-void
.end method
