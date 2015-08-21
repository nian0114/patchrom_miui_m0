.class public Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothMapMessageListingElement"

.field private static final V:Z


# instance fields
.field private attachmentSize:I

.field private cpHandle:J

.field private dateTime:J

.field private mapHandle:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private protect:Ljava/lang/String;

.field private read:Ljava/lang/String;

.field private receptionStatus:Ljava/lang/String;

.field private recipientAddressing:Ljava/lang/String;

.field private recipientName:Ljava/lang/String;

.field private replytoAddressing:Ljava/lang/String;

.field private reportRead:Z

.field private senderAddressing:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private sent:Ljava/lang/String;

.field private size:I

.field private subject:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->cpHandle:J

    .line 39
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mapHandle:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->subject:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    .line 42
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->replytoAddressing:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientAddressing:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 48
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->size:I

    .line 49
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->text:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->receptionStatus:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->attachmentSize:I

    .line 52
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->priority:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->read:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->sent:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->protect:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I
    .locals 4
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    .line 210
    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 211
    const/4 v0, -0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "xmlMsgElement"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 223
    const-string v0, ""

    const-string v1, "msg"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const-string v0, ""

    const-string v1, "handle"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mapHandle:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->subject:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    const-string v0, ""

    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->subject:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 228
    const-string v0, ""

    const-string v1, "datetime"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getDateTimeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 230
    const-string v0, ""

    const-string v1, "sender_name"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 232
    const-string v0, ""

    const-string v1, "sender_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->replytoAddressing:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 234
    const-string v0, ""

    const-string v1, "replyto_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->replytoAddressing:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 236
    const-string v0, ""

    const-string v1, "recipient_name"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientName:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientAddressing:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 238
    const-string v0, ""

    const-string v1, "recipient_addressing"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientAddressing:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v0, :cond_7

    .line 240
    const-string v0, ""

    const-string v1, "type"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    :cond_7
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->size:I

    if-eq v0, v4, :cond_8

    .line 242
    const-string v0, ""

    const-string v1, "size"

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->size:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->text:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 244
    const-string v0, ""

    const-string v1, "text"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->text:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->receptionStatus:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 246
    const-string v0, ""

    const-string v1, "reception_status"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->receptionStatus:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 247
    :cond_a
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->attachmentSize:I

    if-eq v0, v4, :cond_b

    .line 248
    const-string v0, ""

    const-string v1, "attachment_size"

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->attachmentSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->priority:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 250
    const-string v0, ""

    const-string v1, "priority"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->priority:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->read:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->reportRead:Z

    if-eqz v0, :cond_d

    .line 252
    const-string v0, ""

    const-string v1, "read"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->read:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->sent:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 254
    const-string v0, ""

    const-string v1, "sent"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->sent:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->protect:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 256
    const-string v0, ""

    const-string v1, "protect"

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->protect:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    :cond_f
    const-string v0, ""

    const-string v1, "msg"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    return-void
.end method

.method public getAttachmentSize()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->attachmentSize:I

    return v0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    return-wide v0
.end method

.method public getDateTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 73
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->cpHandle:J

    return-wide v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getProtect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->protect:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->read:Ljava/lang/String;

    return-object v0
.end method

.method public getReceptionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->receptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyToAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->replytoAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->sent:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->size:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public setAttachmentSize(I)V
    .locals 0
    .param p1, "attachmentSize"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->attachmentSize:I

    .line 172
    return-void
.end method

.method public setDateTime(J)V
    .locals 0
    .param p1, "dateTime"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->dateTime:J

    .line 78
    return-void
.end method

.method public setHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->cpHandle:J

    .line 63
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->cpHandle:J

    invoke-static {v0, v1, p3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mapHandle:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->priority:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setProtect(Ljava/lang/String;)V
    .locals 0
    .param p1, "protect"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->protect:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setRead(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "read"    # Ljava/lang/String;
    .param p2, "reportRead"    # Z

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->read:Ljava/lang/String;

    .line 188
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->reportRead:Z

    .line 189
    return-void
.end method

.method public setReceptionStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "receptionStatus"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->receptionStatus:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRecipientAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientAddressing"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientAddressing:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->recipientName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setReplytoAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "replytoAddressing"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->replytoAddressing:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSenderAddressing(Ljava/lang/String;)V
    .locals 2
    .param p1, "senderAddressing"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 106
    :cond_0
    const-string v0, "11"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderAddressing:Ljava/lang/String;

    .line 108
    :cond_1
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->senderName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "sent"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->sent:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->size:I

    .line 148
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->subject:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->text:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 140
    return-void
.end method
