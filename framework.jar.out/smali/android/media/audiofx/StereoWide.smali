.class public Landroid/media/audiofx/StereoWide;
.super Landroid/media/audiofx/AudioEffect;
.source "StereoWide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/StereoWide$1;,
        Landroid/media/audiofx/StereoWide$Settings;,
        Landroid/media/audiofx/StereoWide$BaseParameterListener;,
        Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StereoWide"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroid/media/audiofx/StereoWide;->EFFECT_TYPE_STEREOWIDE:Ljava/util/UUID;

    sget-object v4, Landroid/media/audiofx/StereoWide;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-boolean v2, p0, Landroid/media/audiofx/StereoWide;->mStrengthSupported:Z

    iput-object v5, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    iput-object v5, p0, Landroid/media/audiofx/StereoWide;->mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/audiofx/StereoWide;->mParamListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string v3, "StereoWide"

    const-string v4, "WARNING: attaching a StereoWide to global output mix is deprecated!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v0, v1, [I

    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/StereoWide;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    aget v3, v0, v2

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/StereoWide;->mStrengthSupported:Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/audiofx/StereoWide;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/StereoWide;

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/StereoWide;)Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/StereoWide;

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/StereoWide$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    new-instance v0, Landroid/media/audiofx/StereoWide$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/StereoWide$Settings;-><init>()V

    .local v0, "settings":Landroid/media/audiofx/StereoWide$Settings;
    new-array v1, v2, [S

    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/StereoWide;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    const/4 v2, 0x0

    aget-short v2, v1, v2

    iput-short v2, v0, Landroid/media/audiofx/StereoWide$Settings;->strength:S

    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [S

    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/StereoWide;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/media/audiofx/StereoWide;->mStrengthSupported:Z

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/StereoWide$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    .prologue
    iget-object v1, p0, Landroid/media/audiofx/StereoWide;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/StereoWide;->mParamListener:Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    new-instance v0, Landroid/media/audiofx/StereoWide$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/StereoWide$BaseParameterListener;-><init>(Landroid/media/audiofx/StereoWide;Landroid/media/audiofx/StereoWide$1;)V

    iput-object v0, p0, Landroid/media/audiofx/StereoWide;->mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

    iget-object v0, p0, Landroid/media/audiofx/StereoWide;->mBaseParamListener:Landroid/media/audiofx/StereoWide$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/StereoWide$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/StereoWide$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/StereoWide$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/StereoWide;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/StereoWide;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/StereoWide;->checkStatus(I)V

    return-void
.end method
