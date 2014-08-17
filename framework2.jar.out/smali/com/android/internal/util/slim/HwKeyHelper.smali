.class public Lcom/android/internal/util/slim/HwKeyHelper;
.super Ljava/lang/Object;
.source "HwKeyHelper.java"


# static fields
.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDoubleTapOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_app_switch_double_tap_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_assist_double_tap_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_back_double_tap_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDoubleTapOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "getDefault"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .local v1, doubleTapOnHome:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v0, "**recents**"

    .local v0, defaultValue:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "**null**"

    .restart local v0       #defaultValue:Ljava/lang/String;
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_home_double_tap_action"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_1
.end method

.method public static getDoubleTapOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_menu_double_tap_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_app_switch_long_press_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**voice_search**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_assist_long_press_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_back_long_press_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getLongPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "getDefault"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .local v1, longPressOnHome:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v0, "**recents**"

    .local v0, defaultValue:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const-string v0, "**search**"

    .restart local v0       #defaultValue:Ljava/lang/String;
    goto :goto_0

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_2
    const-string v0, "**null**"

    .restart local v0       #defaultValue:Ljava/lang/String;
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_home_long_press_action"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_1
.end method

.method public static getLongPressOnMenuBehavior(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"
    .parameter "hasAssistOrNoMenu"

    .prologue
    if-eqz p2, :cond_1

    const-string v0, "**null**"

    .local v0, defaultValue:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "**search**"

    .restart local v0       #defaultValue:Ljava/lang/String;
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_menu_long_press_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method public static getPressOnAppSwitchBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**recents**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_app_switch_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnAssistBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**search**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_assist_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnBackBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**back**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_back_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnHomeBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**home**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_home_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getPressOnMenuBehavior(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "getDefault"

    .prologue
    const-string v0, "**menu_big**"

    .local v0, defaultValue:Ljava/lang/String;
    if-eqz p1, :cond_1

    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0       #defaultValue:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_menu_action"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
