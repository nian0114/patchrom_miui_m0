.class public Lcom/android/bluetooth/map/BluetoothMapbMessageSms;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageSms.java"


# instance fields
.field private smsBody:Ljava/lang/String;

.field private smsBodyPdus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBodyPdus:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    const-string v5, "END:MSG"

    const-string v6, "/END\\:MSG"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "tmpBody":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v3    # "tmpBody":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v4

    return-object v4

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBodyPdus:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBodyPdus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBodyPdus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    .line 84
    .local v2, "pdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getScAddress()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encodeBinary([B[B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pdu":Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSmsBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 1

    .prologue
    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgPart"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->appParamCharset:I

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->decodeBinary(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "msgBytes":[B
    array-length v1, v0

    if-lez v1, :cond_0

    aget-byte v1, v0, v3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    aget-byte v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only submit PDUs are supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v3, :cond_1

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    :goto_0
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->decodePdu([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    .line 65
    .end local v0    # "msgBytes":[B
    :goto_1
    return-void

    .line 59
    .restart local v0    # "msgBytes":[B
    :cond_1
    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    goto :goto_0

    .line 63
    .end local v0    # "msgBytes":[B
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    goto :goto_1
.end method

.method public setSmsBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "smsBody"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBody:Ljava/lang/String;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setSmsBodyPdus(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "smsBodyPdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->smsBodyPdus:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getEncodingString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    .line 35
    :cond_0
    return-void
.end method
