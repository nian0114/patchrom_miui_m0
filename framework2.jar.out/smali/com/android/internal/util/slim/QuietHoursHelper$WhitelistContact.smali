.class public Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
.super Ljava/lang/Object;
.source "QuietHoursHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/slim/QuietHoursHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhitelistContact"
.end annotation


# instance fields
.field public mBypassCall:Z

.field public mBypassMessage:Z

.field public mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "bypassCall"    # Z
    .param p3, "bypassMessage"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    iput-boolean p3, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;

    .local v0, "lhs":Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;
    iget-object v1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public fromString(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "##"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "parts":[Ljava/lang/String;
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setBypassCall(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    return-void
.end method

.method public setBypassMessage(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassCall:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/util/slim/QuietHoursHelper$WhitelistContact;->mBypassMessage:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method
