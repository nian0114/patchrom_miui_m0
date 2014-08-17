.class public Lcom/android/internal/util/slim/SlimActions;
.super Ljava/lang/Object;
.source "SlimActions.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    const-string v0, "**home**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**back**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**search**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**menu**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**menu_big**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNavBarDefault(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isNavBarEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_show"

    invoke-static {p0}, Lcom/android/internal/util/slim/SlimActions;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isPieEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pie_controls"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "isLongpress"

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/slim/SlimActions;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 26
    .parameter "context"
    .parameter "action"
    .parameter "isLongpress"
    .parameter "collapseShade"

    .prologue
    if-eqz p1, :cond_0

    const-string v22, "**null**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v22, "statusbar"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    .local v6, barService:Lcom/android/internal/statusbar/IStatusBarService;
    const-string v22, "window"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v21

    .local v21, windowManagerService:Landroid/view/IWindowManager;
    const/4 v12, 0x0

    .local v12, isKeyguardShowing:Z
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    move-result v12

    :goto_1
    const/4 v11, 0x0

    .local v11, isKeyguardSecure:Z
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_c

    move-result v11

    :goto_2
    if-eqz p3, :cond_2

    const-string v22, "**quicksettings**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "**notifications**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "**smart_pulldown**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "**theme_switch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "**torch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    :try_start_2
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_d

    :cond_2
    :goto_3
    const-string v22, "**home**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const/16 v22, 0x3

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto :goto_0

    :cond_3
    const-string v22, "**back**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x4

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_4
    const-string v22, "**search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const/16 v22, 0x54

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_5
    const-string v22, "**menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "**menu_big**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    :cond_6
    const/16 v22, 0x52

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_7
    const-string v22, "**ime_nav_left**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x15

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_8
    const-string v22, "**ime_nav_right**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const/16 v22, 0x16

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_9
    const-string v22, "**ime_nav_up**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x13

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_a
    const-string v22, "**ime_nav_down**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x14

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/slim/SlimActions;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    :cond_b
    const-string v22, "**power_menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    :try_start_3
    invoke-interface/range {v21 .. v21}, Landroid/view/IWindowManager;->toggleGlobalMenu()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    goto/16 :goto_0

    :cond_c
    const-string v22, "**power**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const-string v22, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .local v15, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    .end local v15           #pm:Landroid/os/PowerManager;
    :cond_d
    const-string v22, "**torch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    new-instance v9, Landroid/content/Intent;

    const-string v22, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, i:Landroid/content/Intent;
    new-instance v22, Landroid/os/UserHandle;

    const/16 v23, -0x2

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .end local v9           #i:Landroid/content/Intent;
    :cond_e
    const-string v22, "**ime**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    if-nez v12, :cond_0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v23, Landroid/os/UserHandle;

    const/16 v24, -0x2

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_f
    const-string v22, "**pie**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/slim/SlimActions;->isPieEnabled(Landroid/content/Context;)Z

    move-result v14

    .local v14, pieState:Z
    if-eqz v14, :cond_10

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/slim/SlimActions;->isNavBarEnabled(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_10

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/slim/SlimActions;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_10

    const v22, 0x104005f

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "pie_controls"

    if-eqz v14, :cond_11

    const/16 v22, 0x0

    :goto_4
    const/16 v25, -0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_11
    const/16 v22, 0x1

    goto :goto_4

    .end local v14           #pieState:Z
    :cond_12
    const-string v22, "**nav_bar**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/slim/SlimActions;->isNavBarEnabled(Landroid/content/Context;)Z

    move-result v13

    .local v13, navBarState:Z
    if-eqz v13, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/slim/SlimActions;->isPieEnabled(Landroid/content/Context;)Z

    move-result v22

    if-nez v22, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/slim/SlimActions;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_13

    const v22, 0x1040062

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "navigation_bar_show"

    if-eqz v13, :cond_14

    const/16 v22, 0x0

    :goto_5
    const/16 v25, -0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_14
    const/16 v22, 0x1

    goto :goto_5

    .end local v13           #navBarState:Z
    :cond_15
    const-string v22, "**expanded_desktop**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "expanded_desktop_state"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    const/4 v8, 0x1

    .local v8, expandDesktopModeOn:Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "expanded_desktop_state"

    if-eqz v8, :cond_17

    const/16 v22, 0x0

    :goto_7
    const/16 v25, -0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .end local v8           #expandDesktopModeOn:Z
    :cond_16
    const/4 v8, 0x0

    goto :goto_6

    .restart local v8       #expandDesktopModeOn:Z
    :cond_17
    const/16 v22, 0x1

    goto :goto_7

    .end local v8           #expandDesktopModeOn:Z
    :cond_18
    const-string v22, "**theme_switch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "ui_theme_auto_mode"

    const/16 v24, 0x0

    const/16 v25, -0x2

    invoke-static/range {v22 .. v25}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_19

    const/4 v5, 0x1

    .local v5, autoLightMode:Z
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->uiThemeMode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    const/16 v17, 0x1

    .local v17, state:Z
    :goto_9
    if-eqz v5, :cond_1b

    :try_start_4
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_e

    :goto_a
    const v22, 0x1040065

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v5           #autoLightMode:Z
    .end local v17           #state:Z
    :cond_19
    const/4 v5, 0x0

    goto :goto_8

    .restart local v5       #autoLightMode:Z
    :cond_1a
    const/16 v17, 0x0

    goto :goto_9

    .restart local v17       #state:Z
    :cond_1b
    const-string v22, "uimode"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v19

    .local v19, uiModeManagerService:Landroid/app/IUiModeManager;
    if-eqz v17, :cond_1c

    const/16 v22, 0x3

    :goto_b
    :try_start_5
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->setUiThemeMode(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v22

    goto/16 :goto_0

    :cond_1c
    const/16 v22, 0x2

    goto :goto_b

    .end local v5           #autoLightMode:Z
    .end local v17           #state:Z
    .end local v19           #uiModeManagerService:Landroid/app/IUiModeManager;
    :cond_1d
    const-string v22, "**kill**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    if-nez v12, :cond_0

    :try_start_6
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleKillApp()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v22

    goto/16 :goto_0

    :cond_1e
    const-string v22, "**lastapp**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    if-nez v12, :cond_0

    :try_start_7
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleLastApp()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v22

    goto/16 :goto_0

    :cond_1f
    const-string v22, "**recents**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    if-nez v12, :cond_0

    :try_start_8
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v22

    goto/16 :goto_0

    :cond_20
    const-string v22, "**screenshot**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    :try_start_9
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleScreenshot()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v22

    goto/16 :goto_0

    :cond_21
    const-string v22, "**notifications**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    if-eqz v12, :cond_22

    if-nez v11, :cond_0

    :cond_22
    :try_start_a
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationShade()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v22

    goto/16 :goto_0

    :cond_23
    const-string v22, "**quicksettings**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    if-eqz v12, :cond_24

    if-nez v11, :cond_0

    :cond_24
    :try_start_b
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleQSShade()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v22

    goto/16 :goto_0

    :cond_25
    const-string v22, "**smart_pulldown**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    if-eqz v12, :cond_26

    if-nez v11, :cond_0

    :cond_26
    :try_start_c
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->toggleSmartPulldown()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v22

    goto/16 :goto_0

    :cond_27
    const-string v22, "**assist**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_28

    const-string v22, "**keyguard_search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    :cond_28
    const-string v22, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/SearchManager;

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v10

    .local v10, intent:Landroid/content/Intent;
    if-nez v10, :cond_29

    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v22, "android.intent.action.VIEW"

    const-string v23, "http://www.google.com"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v10       #intent:Landroid/content/Intent;
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12, v10}, Lcom/android/internal/util/slim/SlimActions;->startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V

    goto/16 :goto_0

    .end local v10           #intent:Landroid/content/Intent;
    :cond_2a
    const-string v22, "**voice_search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    new-instance v10, Landroid/content/Intent;

    const-string v22, "android.intent.action.SEARCH_LONG_PRESS"

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10       #intent:Landroid/content/Intent;
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_d
    const-string v22, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/SearchManager;

    .local v16, searchManager:Landroid/app/SearchManager;
    if-eqz v16, :cond_2b

    invoke-virtual/range {v16 .. v16}, Landroid/app/SearchManager;->stopSearch()V

    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12, v10}, Lcom/android/internal/util/slim/SlimActions;->startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_0

    .end local v16           #searchManager:Landroid/app/SearchManager;
    :catch_9
    move-exception v7

    .local v7, e:Landroid/content/ActivityNotFoundException;
    const-string v22, "SlimActions:"

    const-string v23, "No activity to handle assist long press action."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v7           #e:Landroid/content/ActivityNotFoundException;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_2c
    const-string v22, "**ring_vib**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    const-string v22, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .local v4, am:Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2d

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v22, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    .local v20, vib:Landroid/os/Vibrator;
    if-eqz v20, :cond_0

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .end local v20           #vib:Landroid/os/Vibrator;
    :cond_2d
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v18, Landroid/media/ToneGenerator;

    const/16 v22, 0x5

    const/16 v23, 0x55

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .local v18, tg:Landroid/media/ToneGenerator;
    if-eqz v18, :cond_0

    const/16 v22, 0x18

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .end local v4           #am:Landroid/media/AudioManager;
    .end local v18           #tg:Landroid/media/ToneGenerator;
    :cond_2e
    const-string v22, "**ring_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    const-string v22, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .restart local v4       #am:Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    if-eqz v22, :cond_2f

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    :cond_2f
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v18, Landroid/media/ToneGenerator;

    const/16 v22, 0x5

    const/16 v23, 0x55

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .restart local v18       #tg:Landroid/media/ToneGenerator;
    if-eqz v18, :cond_0

    const/16 v22, 0x18

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .end local v4           #am:Landroid/media/AudioManager;
    .end local v18           #tg:Landroid/media/ToneGenerator;
    :cond_30
    const-string v22, "**ring_vib_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_33

    const-string v22, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .restart local v4       #am:Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    const-string v22, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Vibrator;

    .restart local v20       #vib:Landroid/os/Vibrator;
    if-eqz v20, :cond_0

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .end local v20           #vib:Landroid/os/Vibrator;
    :cond_31
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_32

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    :cond_32
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    new-instance v18, Landroid/media/ToneGenerator;

    const/16 v22, 0x5

    const/16 v23, 0x55

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .restart local v18       #tg:Landroid/media/ToneGenerator;
    if-eqz v18, :cond_0

    const/16 v22, 0x18

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .end local v4           #am:Landroid/media/AudioManager;
    .end local v18           #tg:Landroid/media/ToneGenerator;
    :cond_33
    const/4 v10, 0x0

    .restart local v10       #intent:Landroid/content/Intent;
    const/16 v22, 0x0

    :try_start_e
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_a

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12, v10}, Lcom/android/internal/util/slim/SlimActions;->startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V

    goto/16 :goto_0

    :catch_a
    move-exception v7

    .local v7, e:Ljava/net/URISyntaxException;
    const-string v22, "SlimActions:"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "URISyntaxException: ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v7           #e:Ljava/net/URISyntaxException;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #isKeyguardSecure:Z
    :catch_b
    move-exception v22

    goto/16 :goto_1

    .restart local v11       #isKeyguardSecure:Z
    :catch_c
    move-exception v22

    goto/16 :goto_2

    :catch_d
    move-exception v22

    goto/16 :goto_3

    .restart local v5       #autoLightMode:Z
    .restart local v17       #state:Z
    :catch_e
    move-exception v22

    goto/16 :goto_a
.end method

.method private static startActivity(Landroid/content/Context;Landroid/view/IWindowManager;ZLandroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "windowManagerService"
    .parameter "isKeyguardShowing"
    .parameter "intent"

    .prologue
    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p1, p3}, Landroid/view/IWindowManager;->showCustomIntentOnKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/high16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static startIntent(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "collapseShade"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "statusbar"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .local v0, barService:Lcom/android/internal/statusbar/IStatusBarService;
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .local v2, windowManagerService:Landroid/view/IWindowManager;
    const/4 v1, 0x0

    .local v1, isKeyguardShowing:Z
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_1
    if-eqz p2, :cond_1

    :try_start_1
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->showCustomIntentOnKeyguard(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const/high16 v3, 0x1000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 27
    .parameter "keyCode"
    .parameter "longpress"

    .prologue
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v26

    .local v26, im:Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, now:J
    const/4 v12, 0x0

    .local v12, downflags:I
    const/16 v24, 0x0

    .local v24, upflags:I
    const/16 v4, 0x15

    move/from16 v0, p0

    if-eq v0, v4, :cond_0

    const/16 v4, 0x16

    move/from16 v0, p0

    if-eq v0, v4, :cond_0

    const/16 v4, 0x13

    move/from16 v0, p0

    if-eq v0, v4, :cond_0

    const/16 v4, 0x14

    move/from16 v0, p0

    if-ne v0, v4, :cond_2

    :cond_0
    const/16 v24, 0x6

    move/from16 v12, v24

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit16 v12, v12, 0x80

    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move/from16 v7, p0

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v1, downEvent:Landroid/view/KeyEvent;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v25, 0x101

    move-wide v14, v2

    move-wide/from16 v16, v2

    move/from16 v19, p0

    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v13, upEvent:Landroid/view/KeyEvent;
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    .end local v1           #downEvent:Landroid/view/KeyEvent;
    .end local v13           #upEvent:Landroid/view/KeyEvent;
    :cond_2
    const/16 v24, 0x48

    move/from16 v12, v24

    goto :goto_0
.end method
