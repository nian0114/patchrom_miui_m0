.class public Lcom/android/bluetooth/map/BluetoothMapAppParams;
.super Ljava/lang/Object;
.source "BluetoothMapAppParams.java"


# static fields
.field private static final ATTACHMENT:I = 0xa

.field private static final ATTACHMENT_LEN:I = 0x1

.field private static final CHARSET:I = 0x14

.field private static final CHARSET_LEN:I = 0x1

.field public static final CHARSET_NATIVE:I = 0x0

.field public static final CHARSET_UTF8:I = 0x1

.field private static final FILTER_MESSAGE_TYPE:I = 0x3

.field private static final FILTER_MESSAGE_TYPE_LEN:I = 0x1

.field private static final FILTER_ORIGINATOR:I = 0x8

.field private static final FILTER_PERIOD_BEGIN:I = 0x4

.field private static final FILTER_PERIOD_END:I = 0x5

.field private static final FILTER_PRIORITY:I = 0x9

.field private static final FILTER_PRIORITY_LEN:I = 0x1

.field private static final FILTER_READ_STATUS:I = 0x6

.field private static final FILTER_READ_STATUS_LEN:I = 0x1

.field private static final FILTER_RECIPIENT:I = 0x7

.field private static final FOLDER_LISTING_SIZE:I = 0x11

.field private static final FOLDER_LISTING_SIZE_LEN:I = 0x2

.field private static final FRACTION_DELIVER:I = 0x16

.field private static final FRACTION_DELIVER_LEN:I = 0x1

.field private static final FRACTION_REQUEST:I = 0x15

.field private static final FRACTION_REQUEST_LEN:I = 0x1

.field public static final INVALID_VALUE_PARAMETER:I = -0x1

.field private static final MAS_INSTANCE_ID:I = 0xf

.field private static final MAS_INSTANCE_ID_LEN:I = 0x1

.field private static final MAX_LIST_COUNT:I = 0x1

.field private static final MAX_LIST_COUNT_LEN:I = 0x2

.field private static final MESSAGE_LISTING_SIZE:I = 0x12

.field private static final MESSAGE_LISTING_SIZE_LEN:I = 0x2

.field private static final MSE_TIME:I = 0x19

.field private static final NEW_MESSAGE:I = 0xd

.field private static final NEW_MESSAGE_LEN:I = 0x1

.field private static final NOTIFICATION_STATUS:I = 0xe

.field private static final NOTIFICATION_STATUS_LEN:I = 0x1

.field public static final NOTIFICATION_STATUS_NO:I = 0x0

.field public static final NOTIFICATION_STATUS_YES:I = 0x1

.field private static final PARAMETER_MASK:I = 0x10

.field private static final PARAMETER_MASK_LEN:I = 0x4

.field private static final RETRY:I = 0xc

.field private static final RETRY_LEN:I = 0x1

.field private static final START_OFFSET:I = 0x2

.field private static final START_OFFSET_LEN:I = 0x2

.field private static final STATUS_INDICATOR:I = 0x17

.field public static final STATUS_INDICATOR_DELETED:I = 0x1

.field private static final STATUS_INDICATOR_LEN:I = 0x1

.field public static final STATUS_INDICATOR_READ:I = 0x0

.field private static final STATUS_VALUE:I = 0x18

.field private static final STATUS_VALUE_LEN:I = 0x1

.field public static final STATUS_VALUE_NO:I = 0x0

.field public static final STATUS_VALUE_YES:I = 0x1

.field private static final SUBJECT_LENGTH:I = 0x13

.field private static final SUBJECT_LENGTH_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapAppParams"

.field private static final TRANSPARENT:I = 0xb

.field private static final TRANSPARENT_LEN:I = 0x1


# instance fields
.field private attachment:I

.field private charset:I

.field private filterMessageType:I

.field private filterOriginator:Ljava/lang/String;

.field private filterPeriodBegin:J

.field private filterPeriodEnd:J

.field private filterPriority:I

.field private filterReadStatus:I

.field private filterRecipient:Ljava/lang/String;

.field private folderListingSize:I

.field private fractionDeliver:I

.field private fractionRequest:I

.field private masInstanceId:I

.field private maxListCount:I

.field private messageListingSize:I

.field private mseTime:J

.field private newMessage:I

.field private notificationStatus:I

.field private parameterMask:J

.field private retry:I

.field private startOffset:I

.field private statusIndicator:I

.field private statusValue:I

.field private subjectLength:I

.field private transparent:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->maxListCount:I

    .line 91
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->startOffset:I

    .line 92
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterMessageType:I

    .line 93
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodBegin:J

    .line 94
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodEnd:J

    .line 95
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterReadStatus:I

    .line 96
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterRecipient:Ljava/lang/String;

    .line 97
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterOriginator:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPriority:I

    .line 99
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->attachment:I

    .line 100
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->transparent:I

    .line 101
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->retry:I

    .line 102
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->newMessage:I

    .line 103
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->notificationStatus:I

    .line 104
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->masInstanceId:I

    .line 105
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->parameterMask:J

    .line 106
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->folderListingSize:I

    .line 107
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->messageListingSize:I

    .line 108
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->subjectLength:I

    .line 109
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->charset:I

    .line 110
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionRequest:I

    .line 111
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionDeliver:I

    .line 112
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusIndicator:I

    .line 113
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusValue:I

    .line 114
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mseTime:J

    .line 123
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "appParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->maxListCount:I

    .line 91
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->startOffset:I

    .line 92
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterMessageType:I

    .line 93
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodBegin:J

    .line 94
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodEnd:J

    .line 95
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterReadStatus:I

    .line 96
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterRecipient:Ljava/lang/String;

    .line 97
    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterOriginator:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPriority:I

    .line 99
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->attachment:I

    .line 100
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->transparent:I

    .line 101
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->retry:I

    .line 102
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->newMessage:I

    .line 103
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->notificationStatus:I

    .line 104
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->masInstanceId:I

    .line 105
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->parameterMask:J

    .line 106
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->folderListingSize:I

    .line 107
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->messageListingSize:I

    .line 108
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->subjectLength:I

    .line 109
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->charset:I

    .line 110
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionRequest:I

    .line 111
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionDeliver:I

    .line 112
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusIndicator:I

    .line 113
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusValue:I

    .line 114
    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mseTime:J

    .line 144
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->ParseParams([B)V

    .line 145
    return-void
.end method

.method private ParseParams([B)V
    .locals 13
    .param p1, "appParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const v11, 0xffff

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "i":I
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, "appParamBuf":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 165
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_15

    .line 166
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p1, v1

    and-int/lit16 v3, v5, 0xff

    .line 167
    .local v3, "tagId":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, p1, v2

    and-int/lit16 v4, v5, 0xff

    .line 168
    .local v4, "tagLength":I
    packed-switch v3, :pswitch_data_0

    .line 350
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown TagId received ( 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v3, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), skipping..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    .line 170
    :pswitch_0
    if-eq v4, v10, :cond_1

    .line 171
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MAX_LIST_COUNT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v11

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    goto :goto_1

    .line 178
    :pswitch_1
    if-eq v4, v10, :cond_2

    .line 179
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "START_OFFSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v11

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    goto :goto_1

    .line 186
    :pswitch_2
    if-eq v4, v9, :cond_3

    .line 187
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FILTER_MESSAGE_TYPE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 191
    :cond_3
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto/16 :goto_1

    .line 194
    :pswitch_3
    if-eqz v4, :cond_0

    .line 195
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :pswitch_4
    if-eqz v4, :cond_0

    .line 200
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 204
    :pswitch_5
    if-eq v4, v9, :cond_4

    .line 205
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FILTER_READ_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    :cond_4
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    goto/16 :goto_1

    .line 212
    :pswitch_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterRecipient(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :pswitch_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterOriginator(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 218
    :pswitch_8
    if-eq v4, v9, :cond_5

    .line 219
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FILTER_PRIORITY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 223
    :cond_5
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPriority(I)V

    goto/16 :goto_1

    .line 226
    :pswitch_9
    if-eq v4, v9, :cond_6

    .line 227
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ATTACHMENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    :cond_6
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setAttachment(I)V

    goto/16 :goto_1

    .line 234
    :pswitch_a
    if-eq v4, v9, :cond_7

    .line 235
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRANSPARENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 239
    :cond_7
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setTransparent(I)V

    goto/16 :goto_1

    .line 242
    :pswitch_b
    if-eq v4, v9, :cond_8

    .line 243
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RETRY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    :cond_8
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setRetry(I)V

    goto/16 :goto_1

    .line 250
    :pswitch_c
    if-eq v4, v9, :cond_9

    .line 251
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NEW_MESSAGE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 255
    :cond_9
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    goto/16 :goto_1

    .line 258
    :pswitch_d
    if-eq v4, v9, :cond_a

    .line 259
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NOTIFICATION_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 263
    :cond_a
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationStatus(I)V

    goto/16 :goto_1

    .line 266
    :pswitch_e
    if-eq v4, v9, :cond_b

    .line 267
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MAS_INSTANCE_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 271
    :cond_b
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    goto/16 :goto_1

    .line 274
    :pswitch_f
    if-eq v4, v12, :cond_c

    .line 275
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 279
    :cond_c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    goto/16 :goto_1

    .line 282
    :pswitch_10
    if-eq v4, v10, :cond_d

    .line 283
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FOLDER_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 287
    :cond_d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v11

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    goto/16 :goto_1

    .line 290
    :pswitch_11
    if-eq v4, v10, :cond_e

    .line 291
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 295
    :cond_e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v11

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    goto/16 :goto_1

    .line 298
    :pswitch_12
    if-eq v4, v9, :cond_f

    .line 299
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SUBJECT_LENGTH: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 303
    :cond_f
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V

    goto/16 :goto_1

    .line 306
    :pswitch_13
    if-eq v4, v9, :cond_10

    .line 307
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHARSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    :cond_10
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setCharset(I)V

    goto/16 :goto_1

    .line 314
    :pswitch_14
    if-eq v4, v9, :cond_11

    .line 315
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FRACTION_REQUEST: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 319
    :cond_11
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionRequest(I)V

    goto/16 :goto_1

    .line 322
    :pswitch_15
    if-eq v4, v9, :cond_12

    .line 323
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FRACTION_DELIVER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 327
    :cond_12
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    goto/16 :goto_1

    .line 330
    :pswitch_16
    if-eq v4, v9, :cond_13

    .line 331
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_INDICATOR: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 335
    :cond_13
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusIndicator(I)V

    goto/16 :goto_1

    .line 338
    :pswitch_17
    if-eq v4, v9, :cond_14

    .line 339
    const-string v5, "BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_VALUER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 343
    :cond_14
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusValue(I)V

    goto/16 :goto_1

    .line 346
    :pswitch_18
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 356
    .end local v3    # "tagId":I
    .end local v4    # "tagLength":I
    :cond_15
    return-void

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private getParamMaxLength()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xf

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "length":I
    add-int/lit8 v0, v0, 0x32

    .line 369
    add-int/lit8 v0, v0, 0x1b

    .line 370
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x4d

    .line 371
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    add-int/2addr v0, v3

    .line 372
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 376
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v3

    cmp-long v1, v3, v6

    if-nez v1, :cond_4

    :goto_1
    add-int/2addr v0, v2

    .line 377
    return v0

    :cond_3
    move v1, v3

    .line 370
    goto :goto_0

    .line 376
    :cond_4
    const/16 v2, 0x14

    goto :goto_1
.end method


# virtual methods
.method public EncodeParams()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const-wide/16 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 388
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParamMaxLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    .local v0, "appParamBuf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 392
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 393
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 394
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 395
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 398
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 400
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 403
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 404
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 405
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_3

    .line 408
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 412
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_4

    .line 413
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 415
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 417
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 418
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 419
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 422
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 423
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 425
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 427
    :cond_6
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 428
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 430
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 432
    :cond_7
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    if-eq v2, v4, :cond_8

    .line 433
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 434
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 435
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    :cond_8
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    if-eq v2, v4, :cond_9

    .line 438
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 439
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 440
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 442
    :cond_9
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    if-eq v2, v4, :cond_a

    .line 443
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 445
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    if-eq v2, v4, :cond_b

    .line 448
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 449
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 452
    :cond_b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    if-eq v2, v4, :cond_c

    .line 453
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    :cond_c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    if-eq v2, v4, :cond_d

    .line 458
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 460
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 462
    :cond_d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    if-eq v2, v4, :cond_e

    .line 463
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 464
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 465
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 467
    :cond_e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_f

    .line 468
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 469
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 470
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 472
    :cond_f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    if-eq v2, v4, :cond_10

    .line 473
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 477
    :cond_10
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    if-eq v2, v4, :cond_11

    .line 478
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 479
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 480
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 482
    :cond_11
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    if-eq v2, v4, :cond_12

    .line 483
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 484
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    :cond_12
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    if-eq v2, v4, :cond_13

    .line 488
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 490
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 492
    :cond_13
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    if-eq v2, v4, :cond_14

    .line 493
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 494
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 495
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 497
    :cond_14
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    if-eq v2, v4, :cond_15

    .line 498
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 499
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 502
    :cond_15
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 503
    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 504
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 505
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    :cond_16
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    if-eq v2, v4, :cond_17

    .line 508
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 509
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 512
    :cond_17
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_18

    .line 513
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 514
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 518
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 520
    .local v1, "retBuf":[B
    return-object v1
.end method

.method public getAttachment()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->attachment:I

    return v0
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->charset:I

    return v0
.end method

.method public getFilterMessageType()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterMessageType:I

    return v0
.end method

.method public getFilterOriginator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterOriginator:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterPeriodBegin()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterPeriodBeginString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 558
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodBegin:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 560
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPeriodEnd()J
    .locals 2

    .prologue
    .line 574
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterPeriodEndString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 578
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodEnd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 580
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPriority()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPriority:I

    return v0
.end method

.method public getFilterReadStatus()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterReadStatus:I

    return v0
.end method

.method public getFilterRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderListingSize()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->folderListingSize:I

    return v0
.end method

.method public getFractionDeliver()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionDeliver:I

    return v0
.end method

.method public getFractionRequest()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionRequest:I

    return v0
.end method

.method public getMasInstanceId()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->masInstanceId:I

    return v0
.end method

.method public getMaxListCount()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->maxListCount:I

    return v0
.end method

.method public getMessageListingSize()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->messageListingSize:I

    return v0
.end method

.method public getMseTime()J
    .locals 2

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mseTime:J

    return-wide v0
.end method

.method public getMseTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 784
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 785
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 786
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNewMessage()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->newMessage:I

    return v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->notificationStatus:I

    return v0
.end method

.method public getParameterMask()J
    .locals 2

    .prologue
    .line 690
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->parameterMask:J

    return-wide v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->retry:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->startOffset:I

    return v0
.end method

.method public getStatusIndicator()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusIndicator:I

    return v0
.end method

.method public getStatusValue()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusValue:I

    return v0
.end method

.method public getSubjectLength()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->subjectLength:I

    return v0
.end method

.method public getTransparent()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->transparent:I

    return v0
.end method

.method public setAttachment(I)V
    .locals 2
    .param p1, "attachment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 634
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->attachment:I

    .line 637
    return-void
.end method

.method public setCharset(I)V
    .locals 3
    .param p1, "charset"    # I

    .prologue
    .line 734
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 735
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", valid range is 0x0000 to 0x0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->charset:I

    .line 737
    return-void
.end method

.method public setFilterMessageType(I)V
    .locals 2
    .param p1, "filterMessageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 548
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x000F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterMessageType:I

    .line 551
    return-void
.end method

.method public setFilterOriginator(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterOriginator"    # Ljava/lang/String;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterOriginator:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setFilterPeriodBegin(J)V
    .locals 0
    .param p1, "filterPeriodBegin"    # J

    .prologue
    .line 564
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodBegin:J

    .line 565
    return-void
.end method

.method public setFilterPeriodBegin(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodBegin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodBegin:J

    .line 571
    return-void
.end method

.method public setFilterPeriodEnd(J)V
    .locals 0
    .param p1, "filterPeriodEnd"    # J

    .prologue
    .line 584
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodEnd:J

    .line 585
    return-void
.end method

.method public setFilterPeriodEnd(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPeriodEnd:J

    .line 591
    return-void
.end method

.method public setFilterPriority(I)V
    .locals 2
    .param p1, "filterPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 624
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterPriority:I

    .line 627
    return-void
.end method

.method public setFilterReadStatus(I)V
    .locals 2
    .param p1, "filterReadStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 598
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterReadStatus:I

    .line 601
    return-void
.end method

.method public setFilterRecipient(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterRecipient"    # Ljava/lang/String;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->filterRecipient:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public setFolderListingSize(I)V
    .locals 2
    .param p1, "folderListingSize"    # I

    .prologue
    .line 704
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->folderListingSize:I

    .line 707
    return-void
.end method

.method public setFractionDeliver(I)V
    .locals 2
    .param p1, "fractionDeliver"    # I

    .prologue
    .line 754
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionDeliver:I

    .line 757
    return-void
.end method

.method public setFractionRequest(I)V
    .locals 2
    .param p1, "fractionRequest"    # I

    .prologue
    .line 744
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->fractionRequest:I

    .line 747
    return-void
.end method

.method public setMasInstanceId(I)V
    .locals 2
    .param p1, "masInstanceId"    # I

    .prologue
    .line 684
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 685
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->masInstanceId:I

    .line 687
    return-void
.end method

.method public setMaxListCount(I)V
    .locals 2
    .param p1, "maxListCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 528
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->maxListCount:I

    .line 531
    return-void
.end method

.method public setMessageListingSize(I)V
    .locals 2
    .param p1, "messageListingSize"    # I

    .prologue
    .line 714
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->messageListingSize:I

    .line 717
    return-void
.end method

.method public setMseTime(J)V
    .locals 0
    .param p1, "mseTime"    # J

    .prologue
    .line 790
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mseTime:J

    .line 791
    return-void
.end method

.method public setMseTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "mseTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mseTime:J

    .line 797
    return-void
.end method

.method public setNewMessage(I)V
    .locals 2
    .param p1, "newMessage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 664
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->newMessage:I

    .line 667
    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 2
    .param p1, "notificationStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 674
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 675
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->notificationStatus:I

    .line 677
    return-void
.end method

.method public setParameterMask(J)V
    .locals 2
    .param p1, "parameterMask"    # J

    .prologue
    .line 694
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->parameterMask:J

    .line 697
    return-void
.end method

.method public setRetry(I)V
    .locals 2
    .param p1, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 654
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->retry:I

    .line 657
    return-void
.end method

.method public setStartOffset(I)V
    .locals 2
    .param p1, "startOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 538
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->startOffset:I

    .line 541
    return-void
.end method

.method public setStatusIndicator(I)V
    .locals 2
    .param p1, "statusIndicator"    # I

    .prologue
    .line 764
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 765
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusIndicator:I

    .line 767
    return-void
.end method

.method public setStatusValue(I)V
    .locals 2
    .param p1, "statusValue"    # I

    .prologue
    .line 774
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->statusValue:I

    .line 777
    return-void
.end method

.method public setSubjectLength(I)V
    .locals 2
    .param p1, "subjectLength"    # I

    .prologue
    .line 724
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->subjectLength:I

    .line 727
    return-void
.end method

.method public setTransparent(I)V
    .locals 2
    .param p1, "transparent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 644
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->transparent:I

    .line 647
    return-void
.end method
