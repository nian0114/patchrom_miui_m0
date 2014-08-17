.class public Lcom/android/internal/util/slim/QuietHoursHelper;
.super Ljava/lang/Object;
.source "QuietHoursHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inQuietHours(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "option"

    .prologue
    const/4 v10, -0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    .local v2, mode:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_enabled"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .local v3, quietHoursEnabled:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_start"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .local v5, quietHoursStart:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "quiet_hours_end"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .local v4, quietHoursEnd:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p1, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    move v2, v6

    :cond_0
    :goto_1
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    if-ne v5, v4, :cond_4

    :cond_1
    :goto_2
    return v6

    .end local v3           #quietHoursEnabled:Z
    .end local v4           #quietHoursEnd:I
    .end local v5           #quietHoursStart:I
    :cond_2
    move v3, v7

    goto :goto_0

    .restart local v3       #quietHoursEnabled:Z
    .restart local v4       #quietHoursEnd:I
    .restart local v5       #quietHoursStart:I
    :cond_3
    move v2, v7

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int v1, v8, v9

    .local v1, minutes:I
    if-ge v4, v5, :cond_7

    if-gt v1, v5, :cond_5

    if-ge v1, v4, :cond_6

    :cond_5
    move v7, v6

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    if-le v1, v5, :cond_8

    if-lt v1, v4, :cond_1

    :cond_8
    move v6, v7

    goto :goto_2

    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #minutes:I
    :cond_9
    move v6, v7

    goto :goto_2
.end method
