.class public Lcom/android/internal/util/cm/NavigationRingHelpers;
.super Ljava/lang/Object;
.source "NavigationRingHelpers.java"


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

.field public static final MAX_ACTIONS:I = 0x3

.field private static final TORCH_STATE_FILTER:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.cactii.flash2.TORCH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/cm/NavigationRingHelpers;->TORCH_STATE_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDrawableForActivity(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 13
    .parameter "res"
    .parameter "activityIcon"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const v3, 0x108038e

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .local v10, iconBg:Landroid/graphics/drawable/Drawable;
    const v3, 0x108038d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .local v11, iconBgActivated:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v2, v3, 0x3

    .local v2, margin:I
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v10, v3, v4

    aput-object p1, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, icon:Landroid/graphics/drawable/LayerDrawable;
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v11, v3, v4

    aput-object p1, v3, v1

    invoke-direct {v9, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v9, iconActivated:Landroid/graphics/drawable/LayerDrawable;
    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object v3, v9

    move v4, v1

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v12, selector:Landroid/graphics/drawable/StateListDrawable;
    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v12, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v12, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v12, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v1, p0, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private static filterAction([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "result"
    .parameter "action"
    .parameter "available"

    .prologue
    if-eqz p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aput-object v1, p0, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getRingerDrawableResId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .local v1, ringerMode:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v2, 0x10803aa

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v2, 0x108039c

    goto :goto_0

    :cond_1
    const v2, 0x108039f

    goto :goto_0
.end method

.method private static getSilentDrawableResId(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x108039c

    :goto_0
    return v1

    :cond_0
    const v1, 0x108039f

    goto :goto_0
.end method

.method public static getTargetActions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    new-array v3, v5, [Ljava/lang/String;

    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, isDefault:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    sget-object v4, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->resetActionsToDefaults(Landroid/content/Context;)V

    const/4 v4, 0x1

    const-string v5, "assist"

    aput-object v5, v3, v4

    :cond_2
    const-string v4, "assist"

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isAssistantAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v4, "torch"

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->isTorchAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/cm/NavigationRingHelpers;->filterAction([Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3
.end method

.method public static getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 8
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    .local v5, resourceId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, res:Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "none"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const v5, 0x108038f

    :cond_1
    :goto_0
    if-gez v5, :cond_d

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .local v1, info:Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_c

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/internal/util/cm/NavigationRingHelpers;->createDrawableForActivity(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const-string v6, "screenshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v5, 0x1080399

    goto :goto_0

    :cond_4
    const-string v6, "ime"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v5, 0x1080390

    goto :goto_0

    :cond_5
    const-string v6, "ringVibrate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    :cond_6
    const-string v6, "ringSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    :cond_7
    const-string v6, "ringVibrateSilent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto :goto_0

    :cond_8
    const-string v6, "kill"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const v5, 0x1080393

    goto :goto_0

    :cond_9
    const-string v6, "power"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const v5, 0x1080396

    goto :goto_0

    :cond_a
    const-string v6, "torch"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v5

    goto/16 :goto_0

    :cond_b
    const-string v6, "assist"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x1080297

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :cond_c
    const v5, 0x108038f

    :cond_d
    new-instance v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {v0, v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const v6, 0x108038f

    if-ne v5, v6, :cond_2

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private static getTorchDrawableResId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/cm/NavigationRingHelpers;->TORCH_STATE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, stateIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, active:Z
    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x10803a7

    :goto_0
    return v2

    :cond_1
    const v2, 0x10803a4

    goto :goto_0
.end method

.method private static getVibrateDrawableResId(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const v1, 0x10803aa

    :goto_0
    return v1

    :cond_0
    const v1, 0x108039f

    goto :goto_0
.end method

.method public static isAssistantAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const-string v0, "search"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    const/4 v1, -0x2

    invoke-virtual {v0, p0, v1}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTorchAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "net.cactii.flash2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static resetActionsToDefaults(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "assist"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_RING_TARGETS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static swapSearchIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, -0x2

    invoke-virtual {v2, p0, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const-string v2, "com.android.systemui.action_assist_icon"

    const v3, 0x1080297

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method public static updateDynamicIconIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/multiwaveview/GlowPadView;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "action"
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .local v1, resourceId:I
    const-string v2, "ringVibrate"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getVibrateDrawableResId(Landroid/content/Context;)I

    move-result v1

    :cond_0
    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .end local v0           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    return-void

    :cond_2
    const-string v2, "ringSilent"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getSilentDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_3
    const-string v2, "ringVibrateSilent"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getRingerDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_4
    const-string v2, "torch"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->getTorchDrawableResId(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method
