.class public Lcom/miui/whetstone/Event/WhetstoneEventLog;
.super Ljava/lang/Object;
.source "WhetstoneEventLog.java"


# static fields
.field private static final DATA_START:I = 0x18

.field private static final INT_TYPE:B = 0x0t

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final LIST_TYPE:B = 0x3t

.field private static final LONG_TYPE:B = 0x1t

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PAYLOAD_START:I = 0x14

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final STRING_TYPE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "WhetstoneEventLog"

.field private static final TAG_OFFSET:I = 0x14

.field private static final THREAD_OFFSET:I = 0x8


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mData:Ljava/lang/Object;

.field private mLength:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    .line 34
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    goto :goto_0
.end method

.method private decodeObject()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 153
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 154
    .local v5, "type":B
    packed-switch v5, :pswitch_data_0

    .line 181
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown entry type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 156
    :pswitch_0
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :pswitch_1
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_2
    :try_start_0
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 164
    .local v3, "length":I
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 165
    .local v4, "start":I
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    new-instance v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v3    # "length":I
    .end local v4    # "start":I
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "WhetstoneEventLog"

    const-string v7, "UTF-8 is not supported"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_3
    iget-object v6, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 174
    .restart local v3    # "length":I
    if-gez v3, :cond_1

    add-int/lit16 v3, v3, 0x100

    .line 175
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 176
    .local v0, "array":[Ljava/lang/Object;
    iput v3, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    invoke-direct {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->decodeObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 100
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    if-lt p1, v1, :cond_1

    .line 101
    :cond_0
    const-string v1, "WhetstoneEventLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, p1

    .local v0, "temp":Ljava/lang/Object;
    goto :goto_0

    .line 108
    .end local v0    # "temp":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    .restart local v0    # "temp":Ljava/lang/Object;
    goto :goto_0
.end method

.method private getParameter(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 7
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v3, -0x1

    .line 59
    .local v3, "start":I
    const/4 v0, -0x1

    .line 60
    .local v0, "end":I
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v4

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 65
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    .line 66
    move v3, v1

    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    .line 68
    move v0, v1

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    if-ne v2, p2, :cond_0

    add-int/lit8 v5, v3, 0x1

    if-le v1, v5, :cond_0

    .line 71
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 74
    :cond_4
    if-lez v3, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    if-ne v2, p2, :cond_5

    add-int/lit8 v5, v3, 0x1

    if-le v1, v5, :cond_5

    .line 77
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 79
    :cond_5
    move v3, v1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    invoke-direct {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->decodeObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 147
    :goto_0
    monitor-exit p0

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "WhetstoneEventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    :try_start_2
    const-string v2, "WhetstoneEventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "temp":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 89
    .end local v0    # "temp":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "temp":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "temp":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Ljava/lang/Long;

    .line 96
    .end local v0    # "temp":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "temp":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProcessId()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "temp":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 53
    .end local v0    # "temp":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "temp":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 45
    const-string v0, "WhetstoneEventLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getProcessId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
