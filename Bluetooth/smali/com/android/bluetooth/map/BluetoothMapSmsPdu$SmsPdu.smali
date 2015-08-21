.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsPdu"
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_DATA_MSG_ID:B = 0x0t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final TP_MIT_DELIVER:B = 0x0t

.field private static final TP_MMS_NO_MORE:B = 0x4t

.field private static final TP_RP_NO_REPLY_PATH:B = 0x0t

.field private static final TP_SRI_NO_REPORT:B = 0x0t

.field private static final TP_UDHI_MASK:B = 0x40t


# instance fields
.field private data:[B

.field private encoding:I

.field private languageShiftTable:I

.field private languageTable:I

.field private msgSeptetCount:I

.field private scAddress:[B

.field private type:I

.field private userDataMsgOffset:I

.field private userDataSeptetPadding:I


# direct methods
.method constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->scAddress:[B

    .line 69
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    .line 76
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataSeptetPadding:I

    .line 77
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->msgSeptetCount:I

    .line 80
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    .line 81
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    .line 82
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->type:I

    .line 83
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageTable:I

    .line 84
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageShiftTable:I

    .line 85
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    .line 86
    return-void
.end method

.method constructor <init>([BIII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "encoding"    # I
    .param p3, "type"    # I
    .param p4, "languageTable"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->scAddress:[B

    .line 69
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    .line 76
    # getter for: Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->access$000()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataSeptetPadding:I

    .line 77
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->msgSeptetCount:I

    .line 96
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    .line 97
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    .line 98
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->type:I

    .line 99
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageTable:I

    .line 100
    return-void
.end method

.method private cdmaGetParameterOffset(B)I
    .locals 8
    .param p1, "parameterId"    # B

    .prologue
    .line 160
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 161
    .local v5, "pdu":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 162
    .local v4, "offset":I
    const/4 v3, 0x0

    .line 165
    .local v3, "found":Z
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 167
    :goto_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 168
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 169
    .local v0, "currentId":I
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 171
    .local v1, "currentLen":I
    if-ne v0, p1, :cond_1

    .line 172
    const/4 v3, 0x1

    .line 180
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 185
    :goto_1
    if-eqz v3, :cond_2

    .line 188
    .end local v4    # "offset":I
    :goto_2
    return v4

    .line 176
    .restart local v0    # "currentId":I
    .restart local v1    # "currentLen":I
    .restart local v4    # "offset":I
    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    .line 179
    goto :goto_0

    .line 181
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothMapSmsPdu"

    const-string v7, "cdmaGetParameterOffset: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private cdmaGetSubParameterOffset(B)I
    .locals 8
    .param p1, "subParameterId"    # B

    .prologue
    .line 194
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 195
    .local v5, "pdu":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 196
    .local v4, "offset":I
    const/4 v3, 0x0

    .line 197
    .local v3, "found":Z
    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v6

    add-int/lit8 v4, v6, 0x2

    .line 198
    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 201
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    .line 202
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 203
    .local v0, "currentId":I
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 205
    .local v1, "currentLen":I
    if-ne v0, p1, :cond_1

    .line 206
    const/4 v3, 0x1

    .line 214
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 219
    :goto_1
    if-eqz v3, :cond_2

    .line 222
    .end local v4    # "offset":I
    :goto_2
    return v4

    .line 210
    .restart local v0    # "currentId":I
    .restart local v1    # "currentLen":I
    .restart local v4    # "offset":I
    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    add-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    .line 213
    goto :goto_0

    .line 215
    .end local v0    # "currentId":I
    .end local v1    # "currentLen":I
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothMapSmsPdu"

    const-string v7, "cdmaGetParameterOffset: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private gsmSubmitGetTpDcsOffset()I
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpPidOffset()I
    .locals 4

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    .line 268
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrongly formatted gsm submit PDU. offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_1
    return v0
.end method

.method private gsmSubmitGetTpUdOffset()I
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpUdlOffset()I
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    .line 295
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    :goto_0
    return v0

    .line 288
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V
    .locals 16
    .param p1, "header"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v12, "yyMMddHHmmss"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "format":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .local v11, "timeStr":Ljava/lang/String;
    const-string v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 353
    .local v10, "timeChars":[B
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 354
    add-int/lit8 v12, v5, 0x1

    aget-byte v12, v10, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    aget-byte v13, v10, v5

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 357
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 358
    .local v2, "cal":Ljava/util/Calendar;
    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    const v13, 0xdbba0

    div-int v7, v12, v13

    .line 360
    .local v7, "offset":I
    if-gez v7, :cond_1

    .line 361
    const-string v12, "%1$02d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    neg-int v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 362
    .local v9, "offsetString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 363
    .local v8, "offsetChars":[C
    const/4 v12, 0x1

    aget-char v12, v8, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    or-int/lit8 v12, v12, 0x40

    const/4 v13, 0x0

    aget-char v13, v8, v13

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 370
    :goto_1
    return-void

    .line 366
    .end local v8    # "offsetChars":[C
    .end local v9    # "offsetString":Ljava/lang/String;
    :cond_1
    const-string v12, "%1$02d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 367
    .restart local v9    # "offsetString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 368
    .restart local v8    # "offsetChars":[C
    const/4 v12, 0x1

    aget-char v12, v8, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    aget-char v13, v8, v13

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method public cdmaChangeToDeliverPdu(J)V
    .locals 5
    .param p1, "date"    # J

    .prologue
    .line 233
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v0

    .line 234
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    const/4 v3, 0x2

    aput-byte v3, v2, v0

    .line 235
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v0

    .line 236
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    .line 238
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetSubParameterOffset(B)I

    move-result v0

    .line 241
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 243
    .local v1, "tmp":I
    and-int/lit8 v1, v1, 0xf

    .line 245
    or-int/lit8 v1, v1, 0x10

    .line 247
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    add-int/lit8 v3, v0, 0x2

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 255
    return-void
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    return v0
.end method

.method public getEncodingString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->type:I

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    if-ne v0, v1, :cond_1

    .line 428
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    packed-switch v0, :pswitch_data_0

    .line 440
    const-string v0, ""

    .line 454
    :goto_0
    return-object v0

    .line 430
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageTable:I

    if-nez v0, :cond_0

    .line 431
    const-string v0, "G-7BIT"

    goto :goto_0

    .line 433
    :cond_0
    const-string v0, "G-7BITEXT"

    goto :goto_0

    .line 435
    :pswitch_1
    const-string v0, "G-8BIT"

    goto :goto_0

    .line 437
    :pswitch_2
    const-string v0, "G-16BIT"

    goto :goto_0

    .line 443
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    packed-switch v0, :pswitch_data_1

    .line 454
    const-string v0, ""

    goto :goto_0

    .line 445
    :pswitch_3
    const-string v0, "C-7ASCII"

    goto :goto_0

    .line 447
    :pswitch_4
    const-string v0, "C-8BIT"

    goto :goto_0

    .line 449
    :pswitch_5
    const-string v0, "C-UNICODE"

    goto :goto_0

    .line 451
    :pswitch_6
    const-string v0, "C-KOREAN"

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 443
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getLanguageShiftTable()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageShiftTable:I

    return v0
.end method

.method public getLanguageTable()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageTable:I

    return v0
.end method

.method public getMsgSeptetCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->msgSeptetCount:I

    return v0
.end method

.method public getScAddress()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->scAddress:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->type:I

    return v0
.end method

.method public getUserDataMsgOffset()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    return v0
.end method

.method public getUserDataMsgSize()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUserDataSeptetPadding()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataSeptetPadding:I

    return v0
.end method

.method public gsmChangeToDeliverPdu(JLjava/lang/String;)V
    .locals 9
    .param p1, "date"    # J
    .param p3, "originator"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 391
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x16

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 393
    .local v2, "newPdu":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 395
    .local v4, "userDataLength":I
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x40

    or-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 397
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    .line 398
    .local v1, "encodedAddress":[B
    if-eqz v1, :cond_1

    .line 399
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    .line 400
    .local v3, "padding":I
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .end local v3    # "padding":I
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v6

    aget-byte v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v6

    aget-byte v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 411
    invoke-direct {p0, v2, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V

    .line 412
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v6

    aget-byte v5, v5, v6

    and-int/lit16 v4, v5, 0xff

    .line 413
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 415
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    array-length v7, v7

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    .line 421
    return-void

    .line 404
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    const/16 v5, 0x81

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 416
    .end local v1    # "encodedAddress":[B
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMapSmsPdu"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Failed to change type to deliver PDU."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public gsmDecodeUserDataHeader()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 302
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 304
    .local v3, "pdu":Ljava/io/ByteArrayInputStream;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/ByteArrayInputStream;->skip(J)J

    .line 305
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 306
    .local v7, "userDataLength":I
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitHasUserDataHeader()Z

    move-result v10

    if-ne v10, v8, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .local v6, "userDataHeaderLength":I
    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    if-ne v10, v8, :cond_0

    new-array v4, v6, [B

    .local v4, "udh":[B
    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .local v5, "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageTable:I

    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->languageShiftTable:I

    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v1, v10, 0x8

    .local v1, "headerBits":I
    div-int/lit8 v2, v1, 0x7

    .local v2, "headerSeptets":I
    rem-int/lit8 v10, v1, 0x7

    if-lez v10, :cond_1

    :goto_1
    add-int/2addr v2, v8

    .line 325
    mul-int/lit8 v8, v2, 0x7

    sub-int/2addr v8, v1

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataSeptetPadding:I

    .line 326
    sub-int v8, v7, v2

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->msgSeptetCount:I

    .line 328
    .end local v1    # "headerBits":I
    .end local v2    # "headerSeptets":I
    .end local v4    # "udh":[B
    .end local v5    # "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    .line 344
    .end local v6    # "userDataHeaderLength":I
    :goto_2
    return-void

    .line 315
    .restart local v4    # "udh":[B
    .restart local v6    # "userDataHeaderLength":I
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "BluetoothMapSmsPdu"

    const-string v11, "unable to read userDataHeader"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "headerBits":I
    .restart local v2    # "headerSeptets":I
    .restart local v5    # "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    move v8, v9

    .line 324
    goto :goto_1

    .line 332
    .end local v1    # "headerBits":I
    .end local v2    # "headerSeptets":I
    .end local v4    # "udh":[B
    .end local v5    # "userDataHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v6    # "userDataHeaderLength":I
    :cond_2
    iput v9, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataSeptetPadding:I

    .line 333
    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->msgSeptetCount:I

    .line 334
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->userDataMsgOffset:I

    goto :goto_2
.end method

.method public gsmSubmitGetTpDcs()I
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public gsmSubmitHasUserDataHeader()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->data:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setEncoding(I)V
    .locals 0
    .param p1, "encoding"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->encoding:I

    .line 109
    return-void
.end method
