.class final Lcom/android/bluetooth/a2dp/Avrcp;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/Avrcp$1;,
        Lcom/android/bluetooth/a2dp/Avrcp$Metadata;,
        Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;,
        Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;
    }
.end annotation


# static fields
.field private static final AVRCP_BASE_VOLUME_STEP:I = 0x1

.field private static final AVRCP_MAX_VOL:I = 0x7f

.field private static final AVRC_ID_FAST_FOR:I = 0x49

.field private static final AVRC_ID_REWIND:I = 0x48

.field private static final AVRC_RSP_ACCEPT:I = 0x9

.field private static final AVRC_RSP_CHANGED:I = 0xd

.field private static final AVRC_RSP_IMPL_STBL:I = 0xc

.field private static final AVRC_RSP_INTERIM:I = 0xf

.field private static final AVRC_RSP_IN_TRANS:I = 0xb

.field private static final AVRC_RSP_NOT_IMPL:I = 0x8

.field private static final AVRC_RSP_REJ:I = 0xa

.field private static final BASE_SKIP_AMOUNT:I = 0x7d0

.field public static final BTRC_FEAT_ABSOLUTE_VOLUME:I = 0x2

.field public static final BTRC_FEAT_BROWSE:I = 0x4

.field public static final BTRC_FEAT_METADATA:I = 0x1

.field private static final BUTTON_TIMEOUT_TIME:I = 0x7d0

.field private static final CMD_TIMEOUT_DELAY:I = 0x7d0

.field private static final DEBUG:Z = true

.field static final EVT_APP_SETTINGS_CHANGED:I = 0x8

.field static final EVT_BATT_STATUS_CHANGED:I = 0x6

.field static final EVT_PLAY_POS_CHANGED:I = 0x5

.field static final EVT_PLAY_STATUS_CHANGED:I = 0x1

.field static final EVT_SYSTEM_STATUS_CHANGED:I = 0x7

.field static final EVT_TRACK_CHANGED:I = 0x2

.field static final EVT_TRACK_REACHED_END:I = 0x3

.field static final EVT_TRACK_REACHED_START:I = 0x4

.field private static final KEY_STATE_PRESS:I = 0x1

.field private static final KEY_STATE_RELEASE:I = 0x0

.field private static final MAX_ERROR_RETRY_TIMES:I = 0x3

.field private static final MAX_MULTIPLIER_VALUE:J = 0x80L

.field static final MEDIA_ATTR_ALBUM:I = 0x3

.field static final MEDIA_ATTR_ARTIST:I = 0x2

.field static final MEDIA_ATTR_GENRE:I = 0x6

.field static final MEDIA_ATTR_NUM_TRACKS:I = 0x5

.field static final MEDIA_ATTR_PLAYING_TIME:I = 0x7

.field static final MEDIA_ATTR_TITLE:I = 0x1

.field static final MEDIA_ATTR_TRACK_NUM:I = 0x4

.field private static final MESSAGE_ABS_VOL_TIMEOUT:I = 0x9

.field private static final MESSAGE_ADJUST_VOLUME:I = 0x7

.field private static final MESSAGE_CHANGE_PLAY_POS:I = 0xc

.field private static final MESSAGE_FAST_FORWARD:I = 0xa

.field private static final MESSAGE_GET_ELEM_ATTRS:I = 0x3

.field private static final MESSAGE_GET_PLAY_STATUS:I = 0x2

.field private static final MESSAGE_GET_RC_FEATURES:I = 0x1

.field private static final MESSAGE_PLAY_INTERVAL_TIMEOUT:I = 0x5

.field private static final MESSAGE_REGISTER_NOTIFICATION:I = 0x4

.field private static final MESSAGE_REWIND:I = 0xb

.field private static final MESSAGE_SET_A2DP_AUDIO_STATE:I = 0xd

.field private static final MESSAGE_SET_ABSOLUTE_VOLUME:I = 0x8

.field private static final MESSAGE_VOLUME_CHANGED:I = 0x6

.field private static final MSG_SET_ARTWORK:I = 0x67

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_STATE:I = 0x64

.field static final NOTIFICATION_TYPE_CHANGED:I = 0x1

.field static final NOTIFICATION_TYPE_INTERIM:I = 0x0

.field static final PLAYSTATUS_ERROR:I = 0xff

.field static final PLAYSTATUS_FWD_SEEK:I = 0x3

.field static final PLAYSTATUS_PAUSED:I = 0x2

.field static final PLAYSTATUS_PLAYING:I = 0x1

.field static final PLAYSTATUS_REV_SEEK:I = 0x4

.field static final PLAYSTATUS_STOPPED:I = 0x0

.field private static final SKIP_DOUBLE_INTERVAL:I = 0xbb8

.field private static final SKIP_PERIOD:I = 0x190

.field private static final TAG:Ljava/lang/String; = "Avrcp"

.field static final TRACK_ID_SIZE:I = 0x8


# instance fields
.field private mAbsVolRetryTimes:I

.field private mAbsoluteVolume:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioStreamMax:I

.field private mClientGeneration:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayState:I

.field private mCurrentPosMs:J

.field private mFeatures:I

.field private mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

.field private mLastDirection:I

.field private mLastSetVolume:I

.field private mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

.field private mNextPosMs:J

.field private mPlayPosChangedNT:I

.field private mPlayStartTimeMs:J

.field private mPlayStatusChangedNT:I

.field private mPlaybackIntervalMs:J

.field private mPrevPosMs:J

.field private mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

.field private mSkipAmount:I

.field private mSkipStartTime:J

.field private mSongLengthMs:J

.field private mTrackChangedNT:I

.field private mTrackNumber:J

.field private mTransportControlFlags:I

.field private mVolCmdInProgress:Z

.field private final mVolumeStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 141
    invoke-static {}, Lcom/android/bluetooth/a2dp/Avrcp;->classInitNative()V

    .line 142
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    .line 146
    iput v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    .line 147
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 148
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 149
    iput-wide v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    .line 150
    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 151
    iput-wide v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 152
    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    .line 153
    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    .line 154
    iput v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 155
    iput v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I

    .line 156
    iput v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I

    .line 157
    iput v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I

    .line 158
    iput v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastDirection:I

    .line 159
    iput-boolean v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z

    .line 160
    iput v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mContext:Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->initNative()V

    .line 166
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    .line 168
    const/16 v0, 0x7f

    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolumeStep:I

    .line 169
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/a2dp/Avrcp;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/a2dp/Avrcp;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayStatusRspNative(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/a2dp/Avrcp;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->getAttributeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/a2dp/Avrcp;B[I[Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # B
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/a2dp/Avrcp;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->processRegisterNotification(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/a2dp/Avrcp;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    return p1
.end method

.method static synthetic access$1812(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/a2dp/Avrcp;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/Avrcp;->updatePlayPauseState(IJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->notifyVolumeChanged(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mVolumeStep:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/a2dp/Avrcp;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastDirection:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/bluetooth/a2dp/Avrcp;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipStartTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getSkipMultiplier()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/a2dp/Avrcp;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->changePositionBy(J)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateA2dpAudioState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/a2dp/Avrcp;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/a2dp/Avrcp;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/a2dp/Avrcp;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/a2dp/Avrcp;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/a2dp/Avrcp;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    return-wide v0
.end method

.method private changePositionBy(J)V
    .locals 8
    .param p1, "amount"    # J

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v0

    .line 655
    .local v0, "currentPosMs":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 659
    :goto_0
    return-void

    .line 656
    :cond_0
    const-wide/16 v4, 0x0

    add-long v6, v0, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 657
    .local v2, "newPosMs":J
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/media/AudioManager;->setRemoteControlClientPlaybackPosition(IJ)V

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private convertPlayStateToPlayStatus(I)I
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 720
    const/16 v0, 0xff

    .line 721
    .local v0, "playStatus":I
    packed-switch p1, :pswitch_data_0

    .line 751
    :goto_0
    return v0

    .line 724
    :pswitch_0
    const/4 v0, 0x1

    .line 725
    goto :goto_0

    .line 729
    :pswitch_1
    const/4 v0, 0x0

    .line 730
    goto :goto_0

    .line 733
    :pswitch_2
    const/4 v0, 0x2

    .line 734
    goto :goto_0

    .line 738
    :pswitch_3
    const/4 v0, 0x3

    .line 739
    goto :goto_0

    .line 743
    :pswitch_4
    const/4 v0, 0x4

    .line 744
    goto :goto_0

    .line 747
    :pswitch_5
    const/16 v0, 0xff

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private convertToAudioStreamVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 814
    int-to-double v0, p1

    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private convertToAvrcpVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 818
    int-to-double v0, p1

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioStreamMax:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private fastForward(I)V
    .locals 4
    .param p1, "keyState"    # I

    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getAttributeString(I)Ljava/lang/String;
    .locals 5
    .param p1, "attrId"    # I

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "attrStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 713
    new-instance v0, Ljava/lang/String;

    .end local v0    # "attrStr":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 715
    .restart local v0    # "attrStr":Ljava/lang/String;
    :cond_1
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttributeString:attrId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-object v0

    .line 694
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$3100(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 695
    goto :goto_0

    .line 698
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$3000(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 699
    goto :goto_0

    .line 702
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$3200(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v0

    .line 703
    goto :goto_0

    .line 706
    :pswitch_4
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 707
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getElementAttr(B[I)V
    .locals 6
    .param p1, "numAttr"    # B
    .param p2, "attrs"    # [I

    .prologue
    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v0, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 590
    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native getElementAttrRspNative(B[I[Ljava/lang/String;)Z
.end method

.method private getMdLong(Landroid/os/Bundle;I)J
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 540
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "id"    # I

    .prologue
    .line 536
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPlayPosition()J
    .locals 6

    .prologue
    .line 677
    const-wide/16 v0, -0x1

    .line 678
    .local v0, "songPosition":J
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v4, -0x7fe688e67fe67d00L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 679
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    add-long v0, v2, v4

    .line 686
    :cond_0
    :goto_0
    const-string v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-wide v0

    .line 683
    :cond_1
    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    goto :goto_0
.end method

.method private getPlayStatus()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native getPlayStatusRspNative(III)Z
.end method

.method private getRcFeatures([BI)V
    .locals 5
    .param p1, "address"    # [B
    .param p2, "features"    # I

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getSkipMultiplier()I
    .locals 10

    .prologue
    .line 662
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 663
    .local v0, "currentTime":J
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSkipStartTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xbb8

    div-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v2, v4

    .line 664
    .local v2, "multi":J
    const-wide/16 v4, 0x80

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method private handlePassthroughCmd(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "keyState"    # I

    .prologue
    .line 633
    packed-switch p1, :pswitch_data_0

    .line 641
    :goto_0
    return-void

    .line 635
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->rewind(I)V

    goto :goto_0

    .line 638
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/Avrcp;->fastForward(I)V

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native initNative()V
.end method

.method private isPlayingState(I)Z
    .locals 1
    .param p1, "playState"    # I

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "isPlaying":Z
    sparse-switch p1, :sswitch_data_0

    .line 762
    const/4 v0, 0x0

    .line 765
    :goto_0
    return v0

    .line 759
    :sswitch_0
    const/4 v0, 0x1

    .line 760
    goto :goto_0

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static make(Landroid/content/Context;)Lcom/android/bluetooth/a2dp/Avrcp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string v1, "Avrcp"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/Avrcp;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "ar":Lcom/android/bluetooth/a2dp/Avrcp;
    invoke-direct {v0}, Lcom/android/bluetooth/a2dp/Avrcp;->start()V

    .line 186
    return-object v0
.end method

.method private notifyVolumeChanged(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertToAudioStreamVolume(I)I

    move-result p1

    .line 808
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x41

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 810
    return-void
.end method

.method private processRegisterNotification(II)V
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "param"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    packed-switch p1, :pswitch_data_0

    .line 630
    :goto_0
    :pswitch_0
    return-void

    .line 604
    :pswitch_1
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 605
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    iget v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    goto :goto_0

    .line 610
    :pswitch_2
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 611
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->sendTrackChangedRsp()V

    goto :goto_0

    .line 615
    :pswitch_3
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v1

    .line 616
    .local v1, "songPosition":J
    iput v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 617
    int-to-long v3, p2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    .line 618
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v5, -0x7fe688e67fe67d00L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 619
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mNextPosMs:J

    .line 620
    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPrevPosMs:J

    .line 621
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 622
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlaybackIntervalMs:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 626
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    long-to-int v4, v1

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private registerNotification(II)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "param"    # I

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native registerNotificationRspPlayPosNative(II)Z
.end method

.method private native registerNotificationRspPlayStatusNative(II)Z
.end method

.method private native registerNotificationRspTrackChangeNative(I[B)Z
.end method

.method private rewind(I)V
    .locals 4
    .param p1, "keyState"    # I

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendTrackChangedRsp()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 668
    new-array v1, v5, [B

    .line 670
    .local v1, "track":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 671
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    mul-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    iget v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspTrackChangeNative(I[B)Z

    .line 674
    return-void
.end method

.method private native setVolumeNative(I)Z
.end method

.method private start()V
    .locals 5

    .prologue
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BluetoothAvrcpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    new-instance v2, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/a2dp/Avrcp$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    .line 176
    new-instance v2, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    .line 177
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 178
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 180
    return-void
.end method

.method private updateA2dpAudioState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 462
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 463
    .local v0, "isPlaying":Z
    :goto_0
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->isPlayingState(I)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 464
    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :goto_1
    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->updatePlayPauseState(IJ)V

    .line 468
    :cond_0
    return-void

    .line 462
    .end local v0    # "isPlaying":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 464
    .restart local v0    # "isPlaying":Z
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 544
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "oldMetadata":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    const/16 v2, 0xd

    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$3002(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    const/4 v2, 0x7

    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$3102(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->access$3202(Lcom/android/bluetooth/a2dp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 549
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackNumber:J

    .line 550
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    if-nez v1, :cond_0

    .line 551
    iput v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTrackChangedNT:I

    .line 552
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->sendTrackChangedRsp()V

    .line 555
    :cond_0
    iget-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v3, -0x7fe688e67fe67d00L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 556
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 557
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 562
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v1, :cond_2

    .line 563
    iput v5, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 564
    iget v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMetadata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mMetadata:Lcom/android/bluetooth/a2dp/Avrcp$Metadata;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/Avrcp$Metadata;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/16 v1, 0x9

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->getMdLong(Landroid/os/Bundle;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    .line 572
    const-string v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method

.method private updatePlayPauseState(IJ)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "currentPosMs"    # J

    .prologue
    .line 471
    const-string v7, "Avrcp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePlayPauseState, old="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-wide v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v9, -0x7fe688e67fe67d00L

    cmp-long v7, v7, v9

    if-eqz v7, :cond_7

    const/4 v4, 0x1

    .line 475
    .local v4, "oldPosValid":Z
    :goto_0
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    invoke-direct {p0, v7}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v3

    .line 476
    .local v3, "oldPlayStatus":I
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I

    move-result v1

    .line 478
    .local v1, "newPlayStatus":I
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    if-eq v7, p1, :cond_0

    if-eqz v4, :cond_0

    .line 480
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 483
    :cond_0
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I

    .line 484
    const-wide/16 v7, -0x1

    cmp-long v7, p2, v7

    if-eqz v7, :cond_1

    .line 485
    iput-wide p2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    .line 487
    :cond_1
    const/4 v7, 0x3

    if-ne p1, v7, :cond_2

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStartTimeMs:J

    .line 491
    :cond_2
    iget-wide v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPosMs:J

    const-wide v9, -0x7fe688e67fe67d00L

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8

    const/4 v2, 0x1

    .line 493
    .local v2, "newPosValid":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J

    move-result-wide v5

    .line 494
    .local v5, "playPosition":J
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v7, :cond_4

    if-ne v3, v1, :cond_3

    if-ne v4, v2, :cond_3

    if-eqz v2, :cond_4

    iget-wide v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mNextPosMs:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_3

    iget-wide v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPrevPosMs:J

    cmp-long v7, v5, v7

    if-gtz v7, :cond_4

    .line 499
    :cond_3
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    .line 500
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    long-to-int v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z

    .line 502
    :cond_4
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I

    if-nez v7, :cond_5

    if-eqz v2, :cond_5

    const/4 v7, 0x3

    if-ne p1, v7, :cond_5

    .line 504
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    iget-wide v8, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mNextPosMs:J

    sub-long/2addr v8, v5

    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 508
    .end local v0    # "msg":Landroid/os/Message;
    :cond_5
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    if-nez v7, :cond_6

    if-eq v3, v1, :cond_6

    .line 509
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    .line 510
    iget v7, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mPlayStatusChangedNT:I

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayStatusNative(II)Z

    .line 512
    :cond_6
    return-void

    .line 473
    .end local v1    # "newPlayStatus":I
    .end local v2    # "newPosValid":Z
    .end local v3    # "oldPlayStatus":I
    .end local v4    # "oldPosValid":Z
    .end local v5    # "playPosition":J
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 491
    .restart local v1    # "newPlayStatus":I
    .restart local v3    # "oldPlayStatus":I
    .restart local v4    # "oldPosValid":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTransportControls(I)V
    .locals 0
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mTransportControlFlags:I

    .line 516
    return-void
.end method

.method private volumeChangeCallback(II)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public adjustVolume(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/Avrcp;->cleanupNative()V

    .line 200
    return-void
.end method

.method public doQuit()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mRemoteControlDisplay:Lcom/android/bluetooth/a2dp/Avrcp$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 196
    return-void
.end method

.method public isAbsoluteVolumeSupported()Z
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setA2dpAudioState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 825
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAbsoluteVolume(I)V
    .locals 5
    .param p1, "volume"    # I

    .prologue
    const/4 v4, 0x0

    .line 786
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/Avrcp;->convertToAvrcpVolume(I)I

    move-result v0

    .line 787
    .local v0, "avrcpVolume":I
    const/16 v2, 0x7f

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
