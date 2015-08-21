.class public Lcom/android/bluetooth/map/BluetoothMapContent;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContent$1;,
        Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final MAP_MESSAGE_CHARSET_NATIVE:I = 0x0

.field public static final MAP_MESSAGE_CHARSET_UTF8:I = 0x1

.field private static final MASK_ATTACHMENT_SIZE:I = 0x400

.field private static final MASK_DATETIME:I = 0x2

.field private static final MASK_PRIORITY:I = 0x800

.field private static final MASK_PROTECTED:I = 0x4000

.field private static final MASK_READ:I = 0x1000

.field private static final MASK_RECEPTION_STATUS:I = 0x100

.field private static final MASK_RECIPIENT_ADDRESSING:I = 0x20

.field private static final MASK_RECIPIENT_NAME:I = 0x10

.field private static final MASK_REPLYTO_ADDRESSING:I = 0x8000

.field private static final MASK_SENDER_ADDRESSING:I = 0x8

.field private static final MASK_SENDER_NAME:I = 0x4

.field private static final MASK_SENT:I = 0x2000

.field private static final MASK_SIZE:I = 0x80

.field private static final MASK_SUBJECT:I = 0x1

.field private static final MASK_TEXT:I = 0x200

.field private static final MASK_TYPE:I = 0x40

.field public static final MMS_BCC:I = 0x81

.field public static final MMS_CC:I = 0x82

.field public static final MMS_FROM:I = 0x89

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field public static final MMS_TO:I = 0x97

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContent"

.field private static final V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    .line 92
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "m_id"

    aput-object v1, v0, v5

    const-string v1, "m_size"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "BluetoothMapContent"

    const-string v1, "getContentResolver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method

.method private addSmsEntry()V
    .locals 5

    .prologue
    .line 128
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v1, "mVal":Landroid/content/ContentValues;
    const-string v2, "address"

    const-string v3, "1234"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "body"

    const-string v3, "Hello!!!"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string v2, "read"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "mUri":Landroid/net/Uri;
    return-void
.end method

.method private buildAppParams()Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .locals 5

    .prologue
    .line 138
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 140
    .local v0, "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v2, 0x7fff

    .line 156
    .local v2, "paramMask":I
    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    .line 159
    const-string v3, "20130101T000000"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    .line 160
    const-string v3, "20131230T000000"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    .line 161
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    .line 162
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    .line 163
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :goto_0
    return-object v0

    .line 166
    .restart local v0    # "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 666
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;-><init>()V

    .line 668
    .local v0, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 669
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 670
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 671
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 672
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 673
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 674
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 675
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 676
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 677
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 678
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 679
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setAttachmentSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 680
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 681
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 682
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 683
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 684
    return-object v0
.end method

.method private extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 1477
    const/4 v2, 0x0

    .line 1478
    .local v2, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/addr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1480
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1481
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1487
    .local v7, "c":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    :cond_0
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, "address":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1491
    .local v8, "type":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1510
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 1493
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/Integer;
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 1494
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 1498
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 1502
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 1506
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addBcc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_3
        0x82 -> :sswitch_2
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V
    .locals 23
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 1557
    const/4 v4, 0x0

    .line 1558
    .local v4, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1559
    .local v5, "selection":Ljava/lang/String;
    const-string v2, "content://mms/%d/part"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 1560
    .local v21, "uriStr":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1562
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1568
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1570
    :cond_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 1571
    .local v19, "partId":Ljava/lang/Long;
    const-string v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1572
    .local v13, "contentType":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1573
    .local v17, "name":Ljava/lang/String;
    const-string v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1574
    .local v10, "charset":Ljava/lang/String;
    const-string v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1575
    .local v16, "filename":Ljava/lang/String;
    const-string v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1576
    .local v20, "text":Ljava/lang/String;
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1577
    .local v15, "fd":Ljava/lang/Integer;
    const-string v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1578
    .local v11, "cid":Ljava/lang/String;
    const-string v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1579
    .local v12, "cl":Ljava/lang/String;
    const-string v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1592
    .local v9, "cdisp":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v18

    .line 1593
    .local v18, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 1594
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    .line 1595
    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    .line 1596
    move-object/from16 v0, v18

    iput-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    .line 1597
    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    .line 1600
    if-eqz v20, :cond_3

    .line 1601
    :try_start_0
    const-string v2, "UTF-8"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 1602
    const-string v2, "utf-8"

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    :cond_1
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->fileName:Ljava/lang/String;

    .line 1620
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1622
    .end local v9    # "cdisp":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v12    # "cl":Ljava/lang/String;
    .end local v13    # "contentType":Ljava/lang/String;
    .end local v15    # "fd":Ljava/lang/Integer;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .end local v19    # "partId":Ljava/lang/Long;
    .end local v20    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->updateCharset()V

    .line 1623
    return-void

    .line 1605
    .restart local v9    # "cdisp":Ljava/lang/String;
    .restart local v10    # "charset":Ljava/lang/String;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v12    # "cl":Ljava/lang/String;
    .restart local v13    # "contentType":Ljava/lang/String;
    .restart local v15    # "fd":Ljava/lang/Integer;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .restart local v19    # "partId":Ljava/lang/Long;
    .restart local v20    # "text":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->readMmsDataPart(J)[B

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 1606
    if-eqz v10, :cond_1

    .line 1607
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1609
    :catch_0
    move-exception v14

    .line 1610
    .local v14, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v2, "BluetoothMapContent"

    const-string v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 1612
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1617
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    throw v2

    .line 1613
    :catch_1
    move-exception v14

    .line 1614
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v2, "BluetoothMapContent"

    const-string v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 1616
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    .locals 10
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 709
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 710
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/addr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 711
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 712
    .local v1, "uriAddress":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "addr":Ljava/lang/String;
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 713
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 715
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 719
    :cond_0
    if-eqz v7, :cond_1

    .line 720
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_1
    return-object v6
.end method

.method private getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 688
    const/4 v7, 0x0

    .line 690
    .local v7, "name":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 693
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v8

    .line 694
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "in_visible_group=1"

    .line 695
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "display_name ASC"

    .line 697
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 699
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v8, :cond_0

    .line 700
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 704
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 705
    return-object v7
.end method

.method private getFolderName(II)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "threadId"    # I

    .prologue
    .line 1319
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1320
    const-string v0, "deleted"

    .line 1334
    :goto_0
    return-object v0

    .line 1322
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1334
    const-string v0, ""

    goto :goto_0

    .line 1324
    :pswitch_0
    const-string v0, "inbox"

    goto :goto_0

    .line 1326
    :pswitch_1
    const-string v0, "sent"

    goto :goto_0

    .line 1328
    :pswitch_2
    const-string v0, "draft"

    goto :goto_0

    .line 1332
    :pswitch_3
    const-string v0, "outbox"

    goto :goto_0

    .line 1322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getTextPartsMms(J)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 599
    const-string v8, ""

    .line 600
    .local v8, "text":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 601
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/part"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 602
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 603
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 606
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    :cond_0
    const-string v0, "ct"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 609
    .local v7, "ct":Ljava/lang/String;
    const-string v0, "text/plain"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "text"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 612
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    .end local v7    # "ct":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 615
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 617
    :cond_3
    return-object v8
.end method

.method private matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 888
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    const/4 v0, 0x1

    .line 891
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 869
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "orig":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 871
    const-string v2, "*"

    const-string v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_0

    .line 874
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .line 884
    .local v1, "res":Z
    :goto_0
    return v1

    .line 875
    .end local v1    # "res":Z
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 876
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 878
    .end local v1    # "res":Z
    :cond_1
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_0

    .line 882
    .end local v1    # "res":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 808
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 809
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x89

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, "phone":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 811
    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 813
    const/4 v4, 0x1

    .line 826
    .local v4, "res":Z
    :goto_0
    return v4

    .line 815
    .end local v4    # "res":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 818
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0

    .line 820
    .end local v4    # "res":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 824
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "res":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method private matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 831
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 832
    .local v0, "msgType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 833
    const-string v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "phone":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 835
    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    const/4 v3, 0x1

    .line 864
    .local v3, "res":Z
    :goto_0
    return v3

    .line 839
    .end local v3    # "res":Z
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 840
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 842
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 844
    .end local v3    # "res":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 848
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 852
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_3
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 853
    .restart local v2    # "phone":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    .line 854
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 856
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 857
    .end local v3    # "res":Z
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 859
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 861
    .end local v3    # "res":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0
.end method

.method private matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 788
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "recip":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 790
    const-string v2, "*"

    const-string v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_0

    .line 793
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .line 803
    .local v1, "res":Z
    :goto_0
    return v1

    .line 794
    .end local v1    # "res":Z
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 795
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 798
    .end local v1    # "res":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_0

    .line 801
    .end local v1    # "res":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 727
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 728
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "phone":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 730
    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 732
    const/4 v4, 0x1

    .line 745
    .local v4, "res":Z
    :goto_0
    return v4

    .line 734
    .end local v4    # "res":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 737
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0

    .line 739
    .end local v4    # "res":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 743
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "res":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method private matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 750
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 751
    .local v0, "msgType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 752
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 753
    .local v2, "phone":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    .line 754
    .local v1, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    const/4 v3, 0x1

    .line 783
    .end local v1    # "name":Ljava/lang/String;
    .local v3, "res":Z
    :goto_0
    return v3

    .line 757
    .end local v3    # "res":Z
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 761
    .end local v3    # "res":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 765
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_2
    const-string v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 766
    .restart local v2    # "phone":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 767
    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 769
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 771
    .end local v3    # "res":Z
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 774
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 776
    .end local v3    # "res":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 780
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0
.end method

.method private mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 3
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v1, 0x1

    .line 1150
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1152
    .local v0, "msgType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return v1

    .line 1155
    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_0

    .line 1158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printMms(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 194
    return-void
.end method

.method private printMmsAddr(J)V
    .locals 12
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/addr"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 200
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    .local v7, "c":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_0
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "add":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 211
    .local v8, "type":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x97

    if-ne v0, v4, :cond_3

    .line 219
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    .end local v6    # "add":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/Integer;
    :cond_2
    return-void

    .line 213
    .restart local v6    # "add":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x89

    if-ne v0, v4, :cond_1

    goto :goto_0
.end method

.method private printMmsPartImage(J)V
    .locals 10
    .param p1, "partid"    # J

    .prologue
    .line 224
    const-string v6, "content://mms/part/%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, "uriStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 227
    .local v4, "uriAddress":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 231
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 233
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 234
    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "ch":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private printMmsParts(J)V
    .locals 20
    .param p1, "id"    # J

    .prologue
    .line 245
    const/4 v4, 0x0

    .line 246
    .local v4, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "selection":Ljava/lang/String;
    const-string v2, "content://mms/%d/part"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 248
    .local v18, "uriStr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 249
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 256
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 259
    .local v16, "partid":Ljava/lang/Long;
    const-string v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 260
    .local v12, "ct":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 261
    .local v15, "name":Ljava/lang/String;
    const-string v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "charset":Ljava/lang/String;
    const-string v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 263
    .local v14, "filename":Ljava/lang/String;
    const-string v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 264
    .local v17, "text":Ljava/lang/String;
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 265
    .local v13, "fd":Ljava/lang/Integer;
    const-string v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, "cid":Ljava/lang/String;
    const-string v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, "cl":Ljava/lang/String;
    const-string v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 283
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    .end local v9    # "charset":Ljava/lang/String;
    .end local v10    # "cid":Ljava/lang/String;
    .end local v11    # "cl":Ljava/lang/String;
    .end local v12    # "ct":Ljava/lang/String;
    .end local v13    # "fd":Ljava/lang/Integer;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "partid":Ljava/lang/Long;
    .end local v17    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private printSms(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 173
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "body":Ljava/lang/String;
    return-void
.end method

.method private readMmsDataPart(J)[B
    .locals 13
    .param p1, "partid"    # J

    .prologue
    const/4 v12, 0x0

    .line 1520
    const-string v9, "content://mms/part/%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1521
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1522
    .local v7, "uriAddress":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1523
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1524
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    .line 1525
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 1526
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 1529
    .local v6, "retVal":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1530
    const/4 v4, 0x0

    .line 1531
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 1532
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1535
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 1537
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v9, "BluetoothMapContent"

    const-string v10, "Error reading part data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v4    # "len":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v4    # "len":I
    :catch_1
    move-exception v9

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    throw v9

    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method private setAttachmentSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 416
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "size":I
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 419
    const-string v1, "m_size"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 422
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentSize(I)V

    .line 424
    .end local v0    # "size":I
    :cond_1
    return-void
.end method

.method private setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 579
    const-wide/16 v0, 0x0

    .line 581
    .local v0, "date":J
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_1

    .line 582
    const-string v2, "date"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 595
    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDateTime(J)V

    .line 596
    return-void

    .line 583
    :cond_1
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 586
    const-string v2, "date"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    goto :goto_0
.end method

.method private setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 3
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1162
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1163
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    .line 1165
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 1166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    .line 1171
    :cond_0
    return-void
.end method

.method private setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x1

    .line 649
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 650
    .local v0, "handle":J
    const/4 v2, 0x0

    .line 651
    .local v2, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v3, :cond_2

    .line 652
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    if-ne v3, v4, :cond_1

    .line 653
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 661
    :cond_0
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 662
    return-void

    .line 654
    :cond_1
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 655
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 657
    :cond_2
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v3, v4, :cond_0

    .line 658
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 393
    const-string v1, "no"

    .line 394
    .local v1, "priority":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x800

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "pri":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 397
    const-string v2, "pri"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 399
    :cond_0
    const/16 v2, 0x82

    if-ne v0, v2, :cond_1

    .line 400
    const-string v1, "yes"

    .line 403
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setPriority(Ljava/lang/String;)V

    .line 405
    .end local v0    # "pri":I
    :cond_2
    return-void
.end method

.method private setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 346
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 347
    const-string v0, "no"

    .line 349
    .local v0, "protect":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setProtect(Ljava/lang/String;)V

    .line 351
    .end local v0    # "protect":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 7
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v2, 0x1

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "read":I
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v3, :cond_1

    .line 377
    const-string v3, "read"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 381
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 382
    .local v1, "setread":Ljava/lang/String;
    if-ne v0, v2, :cond_2

    .line 383
    const-string v1, "yes"

    .line 388
    :goto_1
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRead(Ljava/lang/String;Z)V

    .line 389
    return-void

    .line 378
    .end local v1    # "setread":Ljava/lang/String;
    :cond_1
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v3, v2, :cond_0

    .line 379
    const-string v3, "read"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 385
    .restart local v1    # "setread":Ljava/lang/String;
    :cond_2
    const-string v1, "no"

    goto :goto_1

    .line 388
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 453
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x100

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 454
    const-string v0, "complete"

    .line 456
    .local v0, "status":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReceptionStatus(Ljava/lang/String;)V

    .line 458
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v8, 0x1

    .line 495
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "address":Ljava/lang/String;
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v4, :cond_3

    .line 498
    const-string v4, "type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 499
    .local v3, "msgType":I
    if-ne v3, v8, :cond_2

    .line 500
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 509
    .end local v3    # "msgType":I
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    .line 511
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    return-void

    .line 502
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "msgType":I
    :cond_2
    const-string v4, "address"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    .end local v3    # "msgType":I
    :cond_3
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v4, v8, :cond_0

    .line 505
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 506
    .local v1, "id":J
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v5, 0x97

    invoke-static {v4, v1, v2, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x1

    .line 515
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 516
    const/4 v3, 0x0

    .line 517
    .local v3, "name":Ljava/lang/String;
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v5, :cond_3

    .line 518
    const-string v5, "type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 519
    .local v2, "msgType":I
    if-eq v2, v9, :cond_2

    .line 520
    const-string v5, "address"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "phone":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 531
    .end local v2    # "msgType":I
    .end local v4    # "phone":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientName(Ljava/lang/String;)V

    .line 533
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void

    .line 523
    .restart local v2    # "msgType":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    .line 525
    .end local v2    # "msgType":I
    :cond_3
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v5, v9, :cond_0

    .line 526
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 527
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v4

    .line 528
    .restart local v4    # "phone":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v8, 0x1

    .line 537
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "address":Ljava/lang/String;
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v4, :cond_3

    .line 540
    const-string v4, "type"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 541
    .local v3, "msgType":I
    if-ne v3, v8, :cond_2

    .line 542
    const-string v4, "address"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .end local v3    # "msgType":I
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderAddressing(Ljava/lang/String;)V

    .line 553
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    return-void

    .line 544
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "msgType":I
    :cond_2
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    goto :goto_0

    .line 546
    .end local v3    # "msgType":I
    :cond_3
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v4, v8, :cond_0

    .line 547
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 548
    .local v1, "id":J
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v5, 0x89

    invoke-static {v4, v1, v2, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x1

    .line 557
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 558
    const/4 v3, 0x0

    .line 559
    .local v3, "name":Ljava/lang/String;
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v5, :cond_3

    .line 560
    const-string v5, "type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 561
    .local v2, "msgType":I
    if-ne v2, v9, :cond_2

    .line 562
    const-string v5, "address"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "phone":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 573
    .end local v2    # "msgType":I
    .end local v4    # "phone":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderName(Ljava/lang/String;)V

    .line 575
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void

    .line 565
    .restart local v2    # "msgType":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    .line 567
    .end local v2    # "msgType":I
    :cond_3
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v5, v9, :cond_0

    .line 568
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 569
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x89

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v4

    .line 570
    .restart local v4    # "phone":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 355
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "msgType":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_2

    .line 358
    const-string v2, "type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 362
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 363
    .local v1, "sent":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 364
    const-string v1, "yes"

    .line 369
    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    .line 371
    .end local v0    # "msgType":I
    .end local v1    # "sent":Ljava/lang/String;
    :cond_1
    return-void

    .line 359
    .restart local v0    # "msgType":I
    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 360
    const-string v2, "msg_box"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 366
    .restart local v1    # "sent":Ljava/lang/String;
    :cond_3
    const-string v1, "no"

    goto :goto_1
.end method

.method private setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 462
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "size":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_2

    .line 465
    const-string v2, "body"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "subject":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 471
    .end local v1    # "subject":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSize(I)V

    .line 473
    .end local v0    # "size":I
    :cond_1
    return-void

    .line 467
    .restart local v0    # "size":I
    :cond_2
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 468
    const-string v2, "m_size"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 622
    const-string v3, ""

    .line 623
    .local v3, "subject":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    .line 624
    .local v2, "subLength":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 625
    const/16 v2, 0x100

    .line 627
    :cond_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 628
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v4, :cond_4

    .line 629
    const-string v4, "body"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 638
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 639
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 643
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSubject(Ljava/lang/String;)V

    .line 645
    :cond_3
    return-void

    .line 630
    :cond_4
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 631
    const-string v4, "sub"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 634
    :cond_5
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 635
    .local v0, "id":J
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x1

    .line 428
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 429
    const-string v0, ""

    .line 430
    .local v0, "hasText":Ljava/lang/String;
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v5, :cond_2

    .line 431
    const-string v0, "yes"

    .line 447
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setText(Ljava/lang/String;)V

    .line 449
    .end local v0    # "hasText":Ljava/lang/String;
    :cond_1
    return-void

    .line 432
    .restart local v0    # "hasText":Ljava/lang/String;
    :cond_2
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v5, v9, :cond_0

    .line 433
    const-string v5, "text_only"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 434
    .local v4, "textOnly":I
    if-ne v4, v9, :cond_3

    .line 435
    const-string v0, "yes"

    goto :goto_0

    .line 437
    :cond_3
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 438
    .local v1, "id":J
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(J)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 440
    const-string v0, "yes"

    goto :goto_0

    .line 442
    :cond_4
    const-string v0, "no"

    goto :goto_0
.end method

.method private setType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v5, 0x1

    .line 477
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_3

    .line 480
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    if-ne v1, v5, :cond_2

    .line 481
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 491
    .end local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_1
    return-void

    .line 482
    .restart local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_2
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 483
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 485
    :cond_3
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v1, v5, :cond_0

    .line 486
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V
    .locals 26
    .param p1, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "incoming"    # Z

    .prologue
    .line 1353
    const/16 v17, 0x0

    .local v17, "contactId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1354
    .local v18, "contactName":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1355
    .local v25, "phoneNumbers":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 1358
    .local v20, "emailAddresses":[Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1361
    .local v6, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v5, 0x1

    const-string v9, "display_name"

    aput-object v9, v7, v5

    .line 1362
    .local v7, "projection":[Ljava/lang/String;
    const-string v8, "in_visible_group=1"

    .line 1363
    .local v8, "selection":Ljava/lang/String;
    const-string v10, "_id ASC"

    .line 1366
    .local v10, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1367
    .local v24, "p":Landroid/database/Cursor;
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v9, 0x1

    if-lt v5, v9, :cond_0

    .line 1368
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1369
    const-string v5, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1370
    const-string v5, "display_name"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1372
    :cond_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1375
    if-nez v17, :cond_2

    .line 1376
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1377
    const/4 v5, 0x0

    aput-object p2, v25, v5

    .line 1412
    :cond_1
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_6

    .line 1413
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1416
    :goto_1
    return-void

    .line 1381
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const-string v14, "contact_id = ?"

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1385
    if-eqz v24, :cond_4

    .line 1386
    const/16 v21, 0x0

    .line 1387
    .local v21, "i":I
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v22, v21

    .line 1388
    .end local v21    # "i":I
    .local v22, "i":I
    :goto_2
    if-eqz v24, :cond_3

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1389
    const-string v5, "data1"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1391
    .local v23, "number":Ljava/lang/String;
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "i":I
    .restart local v21    # "i":I
    aput-object v23, v25, v22

    move/from16 v22, v21

    .line 1392
    .end local v21    # "i":I
    .restart local v22    # "i":I
    goto :goto_2

    .line 1393
    .end local v23    # "number":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1397
    .end local v22    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const-string v14, "contact_id = ?"

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1401
    if-eqz v24, :cond_1

    .line 1402
    const/16 v21, 0x0

    .line 1403
    .restart local v21    # "i":I
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v22, v21

    .line 1404
    .end local v21    # "i":I
    .restart local v22    # "i":I
    :goto_3
    if-eqz v24, :cond_5

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1405
    const-string v5, "data1"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1407
    .local v19, "emailAddress":Ljava/lang/String;
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "i":I
    .restart local v21    # "i":I
    aput-object v19, v20, v22

    move/from16 v22, v21

    .line 1408
    .end local v21    # "i":I
    .restart local v22    # "i":I
    goto :goto_3

    .line 1409
    .end local v19    # "emailAddress":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1415
    .end local v22    # "i":I
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1117
    const-string v0, ""

    .line 1119
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    return-object v0
.end method

.method private setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 938
    const-string v0, ""

    .line 939
    .local v0, "where":Ljava/lang/String;
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_1

    .line 940
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    :cond_0
    :goto_0
    return-object v0

    .line 941
    :cond_1
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 942
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 917
    const-string v0, ""

    .line 918
    .local v0, "where":Ljava/lang/String;
    const-string v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    const-string v0, "msg_box = 1 AND thread_id <> -1"

    .line 934
    :cond_0
    :goto_0
    return-object v0

    .line 921
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 922
    const-string v0, "msg_box = 4 AND thread_id <> -1"

    goto :goto_0

    .line 924
    :cond_2
    const-string v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 925
    const-string v0, "msg_box = 2 AND thread_id <> -1"

    goto :goto_0

    .line 927
    :cond_3
    const-string v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 928
    const-string v0, "msg_box = 3 AND thread_id <> -1"

    goto :goto_0

    .line 930
    :cond_4
    const-string v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    const-string v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 896
    const-string v0, ""

    .line 897
    .local v0, "where":Ljava/lang/String;
    const-string v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    const-string v0, "type = 1 AND thread_id <> -1"

    .line 913
    :cond_0
    :goto_0
    return-object v0

    .line 900
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    const-string v0, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    .line 903
    :cond_2
    const-string v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 904
    const-string v0, "type = 2 AND thread_id <> -1"

    goto :goto_0

    .line 906
    :cond_3
    const-string v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 907
    const-string v0, "type = 3 AND thread_id <> -1"

    goto :goto_0

    .line 909
    :cond_4
    const-string v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const-string v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterOriginator(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1029
    const-string v3, ""

    .line 1030
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    .line 1032
    .local v1, "orig":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1033
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPhones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "phones":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ((type <> 1) OR ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1041
    :goto_0
    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, "localPhoneMatchOrig":Z
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1047
    const/4 v0, 0x1

    .line 1050
    :cond_0
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1052
    const/4 v0, 0x1

    .line 1055
    :cond_1
    if-nez v0, :cond_2

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (type = 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1060
    .end local v0    # "localPhoneMatchOrig":Z
    .end local v2    # "phones":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 1038
    .restart local v2    # "phones":Ljava/lang/String;
    :cond_3
    const-string v3, " AND (type <> 1)"

    goto :goto_0
.end method

.method private setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 9
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    .line 964
    const-string v0, ""

    .line 965
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 966
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_2

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 974
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_3

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    :cond_1
    :goto_1
    return-object v0

    .line 968
    :cond_2
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v1, v4, :cond_0

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND date >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    div-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 976
    :cond_3
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v1, v4, :cond_1

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND date < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    div-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWhereFilterPhones(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 985
    const-string v10, ""

    .line 986
    .local v10, "where":Ljava/lang/String;
    const-string v0, "*"

    const-string v1, "%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 988
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name like ?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    const-string v5, "display_name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 993
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 994
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 996
    .local v7, "contactId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object v7, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1001
    .local v9, "p":Landroid/database/Cursor;
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1005
    .local v8, "number":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1006
    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1010
    .end local v8    # "number":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1013
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1015
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v9    # "p":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1017
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1018
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1021
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1024
    :cond_5
    return-object v10
.end method

.method private setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const/4 v3, 0x1

    .line 1063
    const-string v1, ""

    .line 1064
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    .line 1066
    .local v0, "pri":I
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v2, v3, :cond_0

    .line 1068
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND pri<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1077
    :cond_0
    :goto_0
    return-object v1

    .line 1072
    :cond_1
    if-ne v0, v3, :cond_0

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 3
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 949
    const-string v0, ""

    .line 950
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 951
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 952
    const-string v0, " AND read=0 "

    .line 955
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 956
    const-string v0, " AND read=1 "

    .line 960
    :cond_1
    return-object v0
.end method

.method private setWhereFilterRecipient(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1082
    const-string v3, ""

    .line 1083
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "recip":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1086
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPhones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1088
    .local v1, "phones":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ((type = 1) OR ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    :goto_0
    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1095
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    const/4 v0, 0x0

    .line 1098
    .local v0, "localPhoneMatchOrig":Z
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    const/4 v0, 0x1

    .line 1103
    :cond_0
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1105
    const/4 v0, 0x1

    .line 1108
    :cond_1
    if-nez v0, :cond_2

    .line 1109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (type <> 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1113
    .end local v0    # "localPhoneMatchOrig":Z
    .end local v1    # "phones":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 1091
    .restart local v1    # "phones":Ljava/lang/String;
    :cond_3
    const-string v3, " AND (type = 1)"

    goto :goto_0
.end method

.method private smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 4
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v2, 0x1

    .line 1132
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1133
    .local v0, "msgType":I
    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    .line 1135
    .local v1, "phoneType":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return v2

    .line 1137
    :cond_1
    and-int/lit8 v3, v0, 0x3

    if-eqz v3, :cond_0

    .line 1140
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    if-eq v1, v2, :cond_0

    .line 1143
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1146
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpMessages()V
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->dumpSmsTable()V

    .line 326
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->dumpMmsTable()V

    .line 328
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->buildAppParams()Lcom/android/bluetooth/map/BluetoothMapAppParams;

    move-result-object v0

    .line 330
    .local v0, "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const-string v2, "inbox"

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v1

    .line 332
    .local v1, "mList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    const-string v2, "sent"

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v1

    .line 338
    :try_start_1
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode()[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :goto_1
    return-void

    .line 333
    :catch_0
    move-exception v2

    goto :goto_0

    .line 339
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public dumpMmsTable()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 291
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 293
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 294
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMms(Landroid/database/Cursor;)V

    .line 296
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 297
    .local v7, "id":J
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMmsAddr(J)V

    .line 298
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMmsParts(J)V

    goto :goto_0

    .line 301
    .end local v7    # "id":J
    :cond_0
    const-string v0, "BluetoothMapContent"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    return-void
.end method

.method public dumpSmsTable()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsEntry()V

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 311
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 313
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 314
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->printSms(Landroid/database/Cursor;)V

    goto :goto_0

    .line 318
    :cond_0
    const-string v0, "BluetoothMapContent"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_1
    return-void
.end method

.method public getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 5
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1338
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    .line 1339
    .local v2, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    .line 1340
    .local v0, "id":J
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContent$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1349
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message handle."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1343
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMessage(JI)[B

    move-result-object v3

    .line 1345
    :goto_0
    return-object v3

    :pswitch_1
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v3

    goto :goto_0

    .line 1347
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Email not implemented - invalid message handle."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 11
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1635
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    invoke-direct {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;-><init>()V

    .line 1636
    .local v7, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1637
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    const-string v0, "read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1643
    .local v9, "read":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    :goto_0
    const-string v0, "msg_box"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1649
    .local v8, "msgBox":I
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1650
    .local v10, "threadId":I
    invoke-direct {p0, v8, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setFolder(Ljava/lang/String;)V

    .line 1652
    const-string v0, "sub"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setSubject(Ljava/lang/String;)V

    .line 1653
    const-string v0, "m_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setMessageId(Ljava/lang/String;)V

    .line 1654
    const-string v0, "ct_t"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setContentType(Ljava/lang/String;)V

    .line 1655
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setDate(J)V

    .line 1656
    const-string v0, "text_only"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setTextOnly(Z)V

    .line 1657
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setIncludeAttachments(Z)V

    .line 1662
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V

    .line 1665
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V

    .line 1667
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1669
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encode()[B

    move-result-object v0

    return-object v0

    .line 1646
    .end local v8    # "msgBox":I
    .end local v10    # "threadId":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    goto :goto_0

    .line 1656
    .restart local v8    # "msgBox":I
    .restart local v10    # "threadId":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1657
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 1671
    .end local v8    # "msgBox":I
    .end local v9    # "read":Ljava/lang/String;
    .end local v10    # "threadId":I
    :cond_3
    if-eqz v6, :cond_4

    .line 1672
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1675
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MMS handle not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSmsMessage(JI)[B
    .locals 18
    .param p1, "id"    # J
    .param p3, "charset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1423
    const-wide/16 v14, -0x1

    .line 1425
    .local v14, "time":J
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 1426
    .local v9, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageSms;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 1427
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1429
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1434
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    :cond_0
    :goto_0
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1441
    .local v12, "read":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    :goto_1
    const-string v2, "type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1447
    .local v17, "type":I
    const-string v2, "thread_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1448
    .local v13, "threadId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setFolder(Ljava/lang/String;)V

    .line 1450
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1452
    .local v10, "msgBody":Ljava/lang/String;
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1454
    .local v11, "phone":Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1455
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 1456
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 1460
    :goto_2
    if-nez p3, :cond_5

    .line 1461
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 1462
    invoke-static {v10, v11, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    .line 1469
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1471
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object v2

    return-object v2

    .line 1436
    .end local v10    # "msgBody":Ljava/lang/String;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "read":Ljava/lang/String;
    .end local v13    # "threadId":I
    .end local v17    # "type":I
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_0

    .restart local v12    # "read":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    goto :goto_1

    .line 1458
    .restart local v10    # "msgBody":Ljava/lang/String;
    .restart local v11    # "phone":Ljava/lang/String;
    .restart local v13    # "threadId":I
    .restart local v17    # "type":I
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1464
    :cond_4
    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1466
    :cond_5
    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V

    goto :goto_3

    .line 1473
    .end local v10    # "msgBody":Ljava/lang/String;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "read":Ljava/lang/String;
    .end local v13    # "threadId":I
    .end local v17    # "type":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SMS handle not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 12
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 1174
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListing: folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct {v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    .line 1176
    .local v6, "bmList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    const/4 v9, 0x0

    .line 1179
    .local v9, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v10, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 1180
    .local v10, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 1182
    invoke-direct {p0, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 1184
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    if-eq v0, v11, :cond_2

    .line 1185
    invoke-direct {p0, p1, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 1187
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1190
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1191
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->printSms(Landroid/database/Cursor;)V

    .line 1194
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v9

    .line 1195
    invoke-virtual {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_0

    .line 1198
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1203
    .end local v3    # "where":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1204
    iput v11, v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 1206
    invoke-direct {p0, p1, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    .restart local v3    # "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1211
    .restart local v7    # "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 1212
    const/4 v8, 0x0

    .line 1213
    .local v8, "cnt":I
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1214
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMms(Landroid/database/Cursor;)V

    .line 1216
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v9

    .line 1217
    invoke-virtual {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_1

    .line 1220
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1225
    .end local v3    # "where":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "cnt":I
    :cond_5
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    .line 1226
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    .line 1228
    return-object v6
.end method

.method public msgListingHasUnread(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 11
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1274
    const/4 v7, 0x0

    .line 1277
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 1278
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 1280
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    iput v10, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 1282
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1283
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND read=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1285
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1288
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1289
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1290
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1294
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    iput v9, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 1296
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    .restart local v3    # "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND read=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1299
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1302
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1303
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    .line 1304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1309
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    if-lez v7, :cond_2

    move v0, v9

    :goto_0
    return v0

    :cond_2
    move v0, v10

    goto :goto_0
.end method

.method public msgListingSize(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 9
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    .line 1233
    const/4 v7, 0x0

    .line 1236
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 1237
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 1239
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 1241
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 1242
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1245
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1246
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1247
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1251
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    const/4 v0, 0x1

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 1253
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    .restart local v3    # "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1257
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1258
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    .line 1259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1264
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    return v7
.end method
