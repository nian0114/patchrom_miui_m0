.class public Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;
.super Ljava/lang/Object;
.source "MiuiBleAppPermissions.java"


# static fields
.field private static final SIGNATURE_WHITELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITELIST_PACKAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "miui.bluetooth.ble.test"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.hm.health"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->WHITELIST_PACKAGE:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "701478a1e3b4b7e3978ea69469410f13"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "968ff658471c3572edd73abfc158946f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "34ef92b36ab6feff6e6e9dec480a2b8d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "d52e033c39b6f47a0248b2505a2d6a91"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addTrustSignature(Landroid/content/pm/Signature;)V
    .locals 7
    .param p0, "signature"    # Landroid/content/pm/Signature;

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    const-string v5, "MD5"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/ble/Utils;->getFingerprint([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "sig":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sig":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sig":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkPackageName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->WHITELIST_PACKAGE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static checkSignature(Landroid/content/pm/Signature;)Z
    .locals 8
    .param p0, "signatrue"    # Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x0

    .local v3, "sig":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    const-string v6, "MD5"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/bluetooth/ble/Utils;->getFingerprint([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    .local v4, "trust":Z
    sget-object v5, Lcom/android/bluetooth/ble/app/MiuiBleAppPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return v4

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "trust":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
