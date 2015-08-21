.class public Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vCard"
.end annotation


# instance fields
.field private emailAddresses:[Ljava/lang/String;

.field private envLevel:I

.field private formattedName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phoneNumbers:[Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    .line 117
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->version:Ljava/lang/String;

    .line 118
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 119
    if-eqz p2, :cond_2

    .end local p2    # "formattedName":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    .line 120
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 121
    if-eqz p4, :cond_0

    .line 122
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 123
    :cond_0
    return-void

    .line 118
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "formattedName":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 119
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;
    .param p5, "envLevel"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    .line 83
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    .line 84
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->version:Ljava/lang/String;

    .line 85
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 86
    if-eqz p2, :cond_2

    .end local p2    # "formattedName":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 88
    if-eqz p4, :cond_0

    .line 89
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 90
    :cond_0
    return-void

    .line 85
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "formattedName":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 86
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    .line 132
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->version:Ljava/lang/String;

    .line 133
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 134
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 135
    if-eqz p3, :cond_0

    .line 136
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 137
    :cond_0
    return-void

    .line 133
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;
    .param p4, "envLevel"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    .line 69
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    .line 70
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    .line 101
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    .line 102
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->version:Ljava/lang/String;

    .line 103
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    .line 104
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 105
    if-eqz p3, :cond_0

    .line 106
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    .line 107
    :cond_0
    return-void

    .line 103
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public static parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .locals 12
    .param p0, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p1, "envLevel"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v5, 0x1

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "formattedName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 191
    .local v9, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 193
    .local v6, "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, "line":Ljava/lang/String;
    :goto_0
    const-string v0, "END:VCARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 196
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 197
    const-string v0, "N:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_1

    .line 200
    aget-object v1, v8, v5

    .line 231
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 202
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 204
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_2
    const-string v0, "FN:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 206
    .restart local v8    # "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_3

    .line 207
    aget-object v2, v8, v5

    goto :goto_1

    .line 209
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 211
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_4
    const-string v0, "TEL:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 213
    .restart local v8    # "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_0

    .line 214
    aget-object v0, v8, v5

    const-string v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, "subParts":[Ljava/lang/String;
    if-nez v9, :cond_5

    .line 216
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .restart local v9    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v10, v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "subParts":[Ljava/lang/String;
    :cond_6
    const-string v0, "EMAIL:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 223
    .restart local v8    # "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_0

    .line 224
    aget-object v0, v8, v5

    const-string v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 225
    .restart local v10    # "subParts":[Ljava/lang/String;
    if-nez v6, :cond_7

    .line 226
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .restart local v6    # "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v10, v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "subParts":[Ljava/lang/String;
    :cond_8
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    if-nez v9, :cond_9

    move-object v3, v4

    :goto_2
    if-nez v6, :cond_a

    :goto_3
    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_2

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_3
.end method

.method private setPhoneNumbers([Ljava/lang/String;)V
    .locals 4
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 142
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 162
    const-string v5, "BEGIN:VCARD"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v5, "VERSION:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->version:Ljava/lang/String;

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 166
    const-string v5, "FN:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->formattedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 169
    const-string v5, "N:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 172
    .local v4, "phoneNumber":Ljava/lang/String;
    const-string v5, "TEL:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->emailAddresses:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 176
    .local v1, "emailAddress":Ljava/lang/String;
    const-string v5, "EMAIL:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v1    # "emailAddress":Ljava/lang/String;
    :cond_3
    const-string v5, "END:VCARD"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    return-void
.end method

.method public getEnvLevel()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->envLevel:I

    return v0
.end method

.method public getFirstPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->phoneNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Phone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
