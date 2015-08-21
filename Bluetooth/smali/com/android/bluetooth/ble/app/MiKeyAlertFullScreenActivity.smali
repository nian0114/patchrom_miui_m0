.class public Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;
.super Lmiui/app/Activity;
.source "MiKeyAlertFullScreenActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlarmVolume:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFinishTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAlarmVolume:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity$1;-><init>(Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mFinishTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAlarmVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-super {p0}, Lmiui/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x4

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->setContentView(I)V

    const v3, 0x7f0b0004

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAlarmVolume:I

    const/4 v3, 0x4

    :try_start_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "notification":Landroid/net/Uri;
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "notification":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .local v2, "window":Landroid/view/Window;
    const/high16 v3, 0x280000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    return-void

    .end local v2    # "window":Landroid/view/Window;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1}, Lmiui/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mFinishTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;->mFinishTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
