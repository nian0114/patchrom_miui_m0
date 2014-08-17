.class public Lcom/android/internal/util/slim/ConfigSplitHelper;
.super Ljava/lang/Object;
.source "ConfigSplitHelper.java"


# static fields
.field private static final SETTINGS_METADATA_NAME:Ljava/lang/String; = "com.android.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonsConfigValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "config"
    .parameter "values"
    .parameter "entries"
    .parameter "isShortcut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .local v15, counter:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, buttonConfigList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/slim/ButtonConfig;>;"
    const/4 v13, 0x0

    .local v13, buttonConfig:Lcom/android/internal/util/slim/ButtonConfig;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .local v4, settingsResources:Landroid/content/res/Resources;
    :try_start_0
    const-string v2, "com.android.settings"

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    const-string v2, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v5, v12, v17

    .local v5, configValue:Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    if-ne v15, v2, :cond_0

    new-instance v13, Lcom/android/internal/util/slim/ButtonConfig;

    .end local v13           #buttonConfig:Lcom/android/internal/util/slim/ButtonConfig;
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/slim/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v13

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/util/slim/ButtonConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v13       #buttonConfig:Lcom/android/internal/util/slim/ButtonConfig;
    :cond_0
    const/4 v2, 0x2

    if-ne v15, v2, :cond_1

    if-eqz p4, :cond_3

    invoke-virtual {v13, v5}, Lcom/android/internal/util/slim/ButtonConfig;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    :cond_1
    :goto_2
    const/4 v2, 0x3

    if-ne v15, v2, :cond_2

    invoke-virtual {v13, v5}, Lcom/android/internal/util/slim/ButtonConfig;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .end local v5           #configValue:Ljava/lang/String;
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #len$:I
    :catch_0
    move-exception v16

    .local v16, e:Ljava/lang/Exception;
    const-string v2, "ButtonsHelper:"

    const-string v6, "can\'t access settings resources"

    move-object/from16 v0, v16

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v16           #e:Ljava/lang/Exception;
    .restart local v5       #configValue:Ljava/lang/String;
    .restart local v12       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v18       #len$:I
    :cond_3
    invoke-virtual {v13, v5}, Lcom/android/internal/util/slim/ButtonConfig;->setLongpressAction(Ljava/lang/String;)V

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/slim/AppHelper;->getProperSummary(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/internal/util/slim/ButtonConfig;->setLongpressActionDescription(Ljava/lang/String;)V

    goto :goto_2

    .end local v5           #configValue:Ljava/lang/String;
    :cond_4
    return-object v14
.end method

.method public static setButtonsConfig(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "isShortcut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/slim/ButtonConfig;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, buttonsConfig:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/slim/ButtonConfig;>;"
    const-string v1, ""

    .local v1, finalConfig:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/slim/ButtonConfig;

    .local v0, buttonConfig:Lcom/android/internal/util/slim/ButtonConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/slim/ButtonConfig;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/slim/ButtonConfig;->getLongpressAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/util/slim/ButtonConfig;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #buttonConfig:Lcom/android/internal/util/slim/ButtonConfig;
    :cond_2
    return-object v1
.end method
