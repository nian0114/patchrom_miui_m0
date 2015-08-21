.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    }
.end annotation


# static fields
.field private static INVALID_VALUE:I = 0x0

.field public static SMS_TYPE_CDMA:I = 0x0

.field public static SMS_TYPE_GSM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSmsPdu"

.field private static final V:Z

.field private static sConcatenatedRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I

    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    .line 460
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I

    return v0
.end method

.method public static decodePdu([BI)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "type"    # I

    .prologue
    .line 601
    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    if-ne p1, v1, :cond_0

    .line 603
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 606
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->gsmParseSubmitPdu([B)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 5
    .param p0, "messageText"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 575
    .local v1, "deliverPdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    .line 576
    .local v0, "currentPdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getType()I

    move-result v3

    sget v4, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    if-ne v3, v4, :cond_0

    .line 577
    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaChangeToDeliverPdu(J)V

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmChangeToDeliverPdu(JLjava/lang/String;)V

    goto :goto_0

    .line 583
    .end local v0    # "currentPdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    :cond_1
    return-object v1
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 463
    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    .line 464
    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    return v0
.end method

.method public static getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .param p0, "messageText"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v10

    .line 473
    .local v10, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v10, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    .line 479
    .local v21, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 483
    .local v14, "msgCount":I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v18, v0

    .line 484
    .local v18, "refNumber":I
    invoke-static/range {p0 .. p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 485
    .local v19, "smsFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 489
    .local v16, "pdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;>;"
    const/4 v2, 0x2

    if-ne v10, v2, :cond_4

    sget v17, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    .line 490
    .local v17, "phoneType":I
    :goto_1
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 491
    .local v7, "encoding":I
    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 492
    .local v8, "languageTable":I
    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    .line 493
    .local v9, "languageShiftTable":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "destinationAddress":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 495
    :cond_0
    const-string v3, "12"

    .line 498
    :cond_1
    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    .line 499
    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v2

    iget-object v12, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 500
    .local v12, "data":[B
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    move/from16 v0, v17

    invoke-direct {v15, v12, v7, v0, v8}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BIII)V

    .line 501
    .local v15, "newPdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .end local v12    # "data":[B
    .end local v15    # "newPdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    :cond_2
    return-object v16

    .line 473
    .end local v3    # "destinationAddress":Ljava/lang/String;
    .end local v7    # "encoding":I
    .end local v8    # "languageTable":I
    .end local v9    # "languageShiftTable":I
    .end local v14    # "msgCount":I
    .end local v16    # "pdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;>;"
    .end local v17    # "phoneType":I
    .end local v18    # "refNumber":I
    .end local v19    # "smsFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    goto :goto_0

    .line 489
    .restart local v14    # "msgCount":I
    .restart local v16    # "pdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;>;"
    .restart local v18    # "refNumber":I
    .restart local v19    # "smsFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    sget v17, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    goto :goto_1

    .line 507
    .restart local v3    # "destinationAddress":Ljava/lang/String;
    .restart local v7    # "encoding":I
    .restart local v8    # "languageTable":I
    .restart local v9    # "languageShiftTable":I
    .restart local v17    # "phoneType":I
    :cond_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v14, :cond_2

    .line 508
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 509
    .local v11, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 510
    add-int/lit8 v2, v13, 0x1

    iput v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 511
    iput v14, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 518
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 519
    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 520
    .local v20, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v20

    iput-object v11, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 527
    const/4 v2, 0x1

    if-ne v7, v2, :cond_6

    .line 528
    move-object/from16 v0, v20

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 529
    move-object/from16 v0, v20

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 532
    :cond_6
    sget v2, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    iget-object v12, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .line 549
    .restart local v12    # "data":[B
    :goto_3
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    move/from16 v0, v17

    invoke-direct {v15, v12, v7, v0, v8}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BIII)V

    .line 550
    .restart local v15    # "newPdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 537
    .end local v12    # "data":[B
    .end local v15    # "newPdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    :cond_7
    new-instance v22, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 538
    .local v22, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 539
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 540
    const/4 v2, 0x1

    if-ne v7, v2, :cond_8

    .line 541
    const/16 v2, 0x9

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 545
    :goto_4
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 546
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    iget-object v12, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    .restart local v12    # "data":[B
    goto :goto_3

    .line 543
    .end local v12    # "data":[B
    :cond_8
    const/4 v2, 0x4

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4
.end method

.method private static gsmParseSubmitPdu([B)Ljava/lang/String;
    .locals 13
    .param p0, "data"    # [B

    .prologue
    const/16 v2, 0xe0

    .line 634
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->gsmStripOffScAddress([B)[B

    move-result-object v0

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    invoke-direct {v11, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BI)V

    .line 635
    .local v11, "pdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    const/4 v12, 0x0

    .line 636
    .local v12, "userDataCompressed":Z
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcs()I

    move-result v6

    .line 637
    .local v6, "dataCodingScheme":I
    const/4 v8, 0x0

    .line 638
    .local v8, "encodingType":I
    const/4 v9, 0x0

    .line 641
    .local v9, "messageBody":Ljava/lang/String;
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_2

    .line 643
    and-int/lit8 v0, v6, 0x20

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    .line 645
    :goto_0
    if-eqz v12, :cond_1

    .line 646
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->setEncoding(I)V

    .line 712
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmDecodeUserDataHeader()V

    .line 715
    packed-switch v8, :pswitch_data_0

    :goto_2
    move-object v0, v9

    .line 745
    :goto_3
    return-object v0

    .line 643
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 649
    :cond_1
    shr-int/lit8 v0, v6, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 651
    :pswitch_0
    const/4 v8, 0x1

    .line 652
    goto :goto_1

    .line 655
    :pswitch_1
    const/4 v8, 0x3

    .line 656
    goto :goto_1

    .line 660
    :pswitch_2
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v8, 0x2

    goto :goto_1

    .line 666
    :cond_2
    and-int/lit16 v0, v6, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_4

    .line 667
    const/4 v12, 0x0

    .line 669
    and-int/lit8 v0, v6, 0x4

    if-nez v0, :cond_3

    .line 671
    const/4 v8, 0x1

    goto :goto_1

    .line 674
    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    .line 676
    :cond_4
    and-int/lit16 v0, v6, 0xf0

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_5

    and-int/lit16 v0, v6, 0xf0

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_5

    and-int/lit16 v0, v6, 0xf0

    if-ne v0, v2, :cond_7

    .line 685
    :cond_5
    and-int/lit16 v0, v6, 0xf0

    if-ne v0, v2, :cond_6

    .line 686
    const/4 v8, 0x3

    .line 691
    :goto_4
    const/4 v12, 0x0

    goto :goto_1

    .line 688
    :cond_6
    const/4 v8, 0x1

    goto :goto_4

    .line 694
    :cond_7
    and-int/lit16 v0, v6, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_9

    .line 697
    const/16 v0, 0x84

    if-ne v6, v0, :cond_8

    .line 699
    const/4 v8, 0x4

    goto :goto_1

    .line 701
    :cond_8
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 705
    :cond_9
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 718
    :pswitch_3
    :try_start_0
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v9, 0x0

    .line 720
    goto/16 :goto_2

    .line 723
    :pswitch_4
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getMsgSeptetCount()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataSeptetPadding()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getLanguageTable()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getLanguageShiftTable()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v9

    .line 726
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded as 7BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 740
    :catch_0
    move-exception v7

    .line 741
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    const-string v0, "BluetoothMapSmsPdu"

    const-string v1, "Unsupported encoding type???"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 731
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_5
    :try_start_1
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgSize()I

    move-result v2

    const-string v3, "utf-16"

    invoke-direct {v10, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 732
    .end local v9    # "messageBody":Ljava/lang/String;
    .local v10, "messageBody":Ljava/lang/String;
    :try_start_2
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded as 16BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v10

    .line 733
    .end local v10    # "messageBody":Ljava/lang/String;
    .restart local v9    # "messageBody":Ljava/lang/String;
    goto/16 :goto_2

    .line 736
    :pswitch_6
    :try_start_3
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgSize()I

    move-result v2

    const-string v3, "KSC5601"

    invoke-direct {v10, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 737
    .end local v9    # "messageBody":Ljava/lang/String;
    .restart local v10    # "messageBody":Ljava/lang/String;
    :try_start_4
    const-string v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded as KSC5601: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v10

    .end local v10    # "messageBody":Ljava/lang/String;
    .restart local v9    # "messageBody":Ljava/lang/String;
    goto/16 :goto_2

    .line 740
    .end local v9    # "messageBody":Ljava/lang/String;
    .restart local v10    # "messageBody":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "messageBody":Ljava/lang/String;
    .restart local v9    # "messageBody":Ljava/lang/String;
    goto :goto_5

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static gsmStripOffScAddress([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 617
    aget-byte v3, p0, v5

    and-int/lit16 v0, v3, 0xff

    .line 618
    .local v0, "addressLength":I
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 619
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Length of address exeeds the length of the PDU data."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 620
    :cond_0
    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int v2, v3, v4

    .line 621
    .local v2, "pduLength":I
    new-array v1, v2, [B

    .line 622
    .local v1, "newData":[B
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    return-object v1
.end method

.method public static testSendRawPdu(Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;)V
    .locals 2
    .param p0, "pdu"    # Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getType()I

    move-result v0

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    if-ne v0, v1, :cond_0

    .line 592
    :cond_0
    return-void
.end method
