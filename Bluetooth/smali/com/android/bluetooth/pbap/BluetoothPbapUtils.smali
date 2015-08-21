.class public Lcom/android/bluetooth/pbap/BluetoothPbapUtils;
.super Ljava/lang/Object;
.source "BluetoothPbapUtils.java"


# static fields
.field public static FILTER_NICKNAME:I = 0x0

.field public static FILTER_PHOTO:I = 0x0

.field public static FILTER_TEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FilterUtils"

.field private static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x3

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_PHOTO:I

    .line 52
    const/4 v0, 0x7

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_TEL:I

    .line 53
    const/16 v0, 0x17

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_NICKNAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vcardType"    # I
    .param p2, "filter"    # [B

    .prologue
    const/4 v2, 0x1

    .line 110
    move v1, p1

    .line 119
    .local v1, "vType":I
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->FILTER_PHOTO:I

    invoke-static {p2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 121
    .local v0, "includePhoto":Z
    :goto_0
    if-nez v0, :cond_1

    .line 123
    const/high16 v3, 0x800000

    or-int/2addr v1, v3

    .line 126
    :cond_1
    new-instance v3, Lcom/android/vcard/VCardComposer;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    return-object v3

    .line 119
    .end local v0    # "includePhoto":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final createProfileVCard(Landroid/content/Context;I[B)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vcardType"    # I
    .param p2, "filter"    # [B

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "composer":Lcom/android/vcard/VCardComposer;
    const/4 v8, 0x0

    .line 157
    .local v8, "vcard":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object v0

    .line 158
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 172
    :goto_0
    if-eqz v0, :cond_0

    .line 174
    :try_start_1
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :cond_0
    :goto_1
    return-object v8

    .line 165
    :cond_1
    :try_start_2
    const-string v1, "FilterUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create profile vcard. Error initializing composer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v7

    .line 170
    .local v7, "t":Ljava/lang/Throwable;
    const-string v1, "FilterUtils"

    const-string v2, "Unable to create profile vcard."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 175
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static createProfileVCardFile(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 187
    .local v2, "os":Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    .line 189
    .local v4, "success":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const-string v8, "r"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 192
    .local v0, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 194
    const/4 v6, 0x0

    .line 205
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v6

    .line 196
    .restart local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v1

    .line 197
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    const/16 v6, 0xc8

    :try_start_1
    invoke-static {v1, v3, v6}, Lcom/android/bluetooth/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 203
    .end local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :goto_1
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/InputStream;)V

    .line 204
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->safeCloseStream(Ljava/io/OutputStream;)V

    move v6, v4

    .line 205
    goto :goto_0

    .line 199
    :catch_0
    move-exception v5

    .line 200
    .local v5, "t":Ljava/lang/Throwable;
    :goto_2
    const-string v6, "FilterUtils"

    const-string v7, "Unable to create default contact vcard file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v4, 0x0

    goto :goto_1

    .line 199
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static getProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 145
    .local v7, "ownerName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    :cond_0
    if-eqz v6, :cond_1

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    return-object v7
.end method

.method public static hasFilter([B)Z
    .locals 1
    .param p0, "filter"    # [B

    .prologue
    .line 56
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilterBitSet([BI)Z
    .locals 6
    .param p0, "filter"    # [B
    .param p1, "filterBit"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    div-int/lit8 v4, p1, 0x8

    rsub-int/lit8 v1, v4, 0x7

    .line 100
    .local v1, "byteNumber":I
    rem-int/lit8 v0, p1, 0x8

    .line 101
    .local v0, "bitNumber":I
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 102
    aget-byte v4, p0, v1

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-lez v4, :cond_0

    .line 105
    .end local v0    # "bitNumber":I
    .end local v1    # "byteNumber":I
    :goto_0
    return v2

    .restart local v0    # "bitNumber":I
    .restart local v1    # "byteNumber":I
    :cond_0
    move v2, v3

    .line 102
    goto :goto_0

    .end local v0    # "bitNumber":I
    .end local v1    # "byteNumber":I
    :cond_1
    move v2, v3

    .line 105
    goto :goto_0
.end method

.method public static isNameAndNumberOnly([B)Z
    .locals 4
    .param p0, "filter"    # [B

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    const-string v2, "FilterUtils"

    const-string v3, "No filter set. isNameAndNumberOnly=false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    .line 74
    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_2
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x7f

    if-gtz v2, :cond_0

    .line 85
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0x78

    if-gtz v2, :cond_0

    .line 94
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isProfileSet(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    .local v7, "isSet":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_0
    return v7

    .end local v7    # "isSet":Z
    :cond_1
    move v7, v8

    .line 133
    goto :goto_0
.end method
